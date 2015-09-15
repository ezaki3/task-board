var BaseViewModel = require('../baseviewmodel.js');
var Task = require('../../model/task.js');
var Group = require('../../model/group.js');
var Board = require('../../model/board.js');
var ViewModel = function () {
    var self = this;

    self.task = new Task(null, null, null, null, null);
    self.selectedTask;

    self.group = new Group(null, null, null, null);
    self.selectedGroup;

    self.board = new Board(null, null, null);

    self.baseViewModel = new BaseViewModel();

    self.listGroup = function (id) {
        self.board.find(id)
            .done(function (response) {
                self.board.id(response.id);
                self.board.subject(response.subject);
                self.board.priority(response.priority);
                self.board.groups(response.groups.map(function (group) {
                    var g = new Group(group.id, response.id, group.subject, group.priority);
                    g.tasks(group.tasks.map(function (task) {
                        return new Task(task.id, group.id, task.subject, task.body, task.priority);
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
        self.task.priority(null);
        $('#taskModal').modal('show');
    }.bind(self);

    self.openGroupModal = function () {
        self.group.id();
        self.group.board_id(self.board.id());
        self.group.subject();
        self.group.priority(null);
        $('#groupModal').modal('show');
    }.bind(self);

    self.findTask = function (group, task) {
        self.selectedTask = task;
        self.selectedGroup = group;
        self.task.id(task.id());
        self.task.subject(task.subject());
        self.task.body(task.body());
        self.task.group_id(task.group_id());
        self.task.priority(task.priority());
        $('#taskModal').modal('show');
    }.bind(self);

    self.findGroup = function (group) {
        self.selectedGroup = group;
        self.group.id(group.id());
        self.group.board_id(group.board_id());
        self.group.subject(group.subject());
        self.group.priority(group.priority());
        $('#groupModal').modal('show');
    }.bind(self);

    self.createTask = function () {
        self.task.create(ko.toJSON({'task': self.task}))
            .done(function (response) {
                console.log(response);
                self.selectedGroup.tasks.push(new Task(response.id, response.group_id, response.subject, response.body, response.priority));
                $('#taskModal').modal('hide');
                self.baseViewModel.alertSuccessMessage('success');
            })
            .fail(function (response) {
                console.log(response);
                self.baseViewModel.alertErrorMessage('error');
            });
    }.bind(self);

    self.createGroup = function () {
        self.group.create(ko.toJSON({'group': self.group}))
            .done(function (response) {
                console.log(response);
                self.board.groups.push(new Group(response.id, response.board_id, response.subject, response.priority));
                $('#groupModal').modal('hide');
                self.baseViewModel.alertSuccessMessage('success');
            })
            .fail(function (response) {
                console.log(response);
                self.baseViewModel.alertErrorMessage('error');
            });
    }.bind(self);

    self.editTask = function () {
        self.task.edit(self.task.id(), ko.toJSON({'task': self.task}))
            .done(function (response) {
                console.log(response);
                self.selectedTask.subject(response.subject);
                self.selectedTask.body(response.body);
                $('#taskModal').modal('hide');
                self.baseViewModel.alertSuccessMessage('success');
            })
            .fail(function (response) {
                console.log(response);
                self.baseViewModel.alertErrorMessage('error')
            });
    }.bind(self);

    self.editGroup = function () {
        self.group.edit(self.group.id(), ko.toJSON({'group': self.group}))
            .done(function (response) {
                console.log(response);
                self.selectedGroup.subject(response.subject);
                $('#groupModal').modal('hide');
                self.baseViewModel.alertSuccessMessage('success');
            })
            .fail(function (response) {
                console.log(response);
                self.baseViewModel.alertErrorMessage('error')
            });
    }.bind(self);

    self.deleteTask = function () {
        self.task.delete(self.selectedTask.id())
            .done(function (response) {
                console.log(response);
                self.selectedGroup.tasks.remove(self.selectedTask);
                $('#taskModal').modal('hide');
                self.baseViewModel.alertSuccessMessage('success');
            })
            .fail(function (response) {
                console.log(response);
                self.baseViewModel.alertErrorMessage('error');
            });
    }.bind(self);

    self.deleteGroup = function () {
        self.group.delete(self.selectedGroup.id())
            .done(function (response) {
                console.log(response);
                self.board.groups.remove(self.selectedGroup);
                $('#groupModal').modal('hide');
                self.baseViewModel.alertSuccessMessage('success');
            })
            .fail(function (response) {
                console.log(response);
                self.baseViewModel.alertErrorMessage('error');
            });
    }.bind(self);
};

module.exports = ViewModel;
