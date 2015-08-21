var Task = require('./task.js');
var Group = require('./group.js');
var ViewModel = function () {
    var self = this;

    self.task = new Task(null, null, null, null);
    self.selectedTask;

    self.group = new Group(null, null);
    self.groups = ko.observableArray();
    self.selectedGroup;

    self.alertSuccessMessage = ko.observable();
    self.alertErrorMessage = ko.observable();

    self.listGroup = function () {
        self.group.search()
            .done(function (response) {
                self.groups(response.map(function (group) {
                    var g = new Group(group.id, group.subject);
                    g.tasks(group.tasks.map(function (task) {
                        return new Task(task.id, task.subject, task.body, task.group_id);
                    }));
                    return g;
                }));
            })
            .fail(function (response) {
                console.log(response);
            });
    }.bind(self);

    self.openTaskModal = function (group) {
        self.selectedGroup = group;
        self.task.id(null);
        self.task.subject(null);
        self.task.body(null);
        self.task.group_id(group.id());
        $('#taskModal').modal('show');
    }.bind(self);

    self.findTask = function (group, task) {
        self.selectedTask = task;
        self.selectedGroup = group;
        self.task.id(task.id());
        self.task.subject(task.subject());
        self.task.body(task.body());
        self.task.group_id(task.group_id());
        $('#taskModal').modal('show');
    }.bind(self);

    self.createTask = function () {
        self.task.create(ko.toJSON({'task': self.task}))
            .done(function (response) {
                console.log(response);
                self.selectedGroup.tasks.push(new Task(response.id, response.subject, response.body, response.group_id));
                $('#taskModal').modal('hide');
                self.alertSuccessMessage('success');
            })
            .fail(function (response) {
                console.log(response);
                self.alertErrorMessage('error');
            });
    }.bind(self);

    self.editTask = function () {
        self.task.edit(self.task.id(), ko.toJSON({'task': self.task}))
            .done(function (response) {
                console.log(response);
                self.selectedTask.subject(response.subject);
                self.selectedTask.body(response.body);
                self.selectedTask.group_id(response.group.id);
                $('#taskModal').modal('hide');
                self.alertSuccessMessage('success');
            })
            .fail(function (response) {
                console.log(response);
                self.alertErrorMessage('error')
            });
    }.bind(self);

    self.deleteTask = function () {
        self.task.delete(self.selectedTask.id())
            .done(function (response) {
                console.log(response);
                self.selectedGroup.tasks.remove(self.selectedTask);
                $('#taskModal').modal('hide');
                self.alertSuccessMessage('success');
            })
            .fail(function (response) {
                console.log(response);
                self.alertErrorMessage('error');
            });
    }.bind(self);
};

module.exports = ViewModel;
