/* global ko */
(function () {
    'use strict';

    var Task = function (id, subject, body, group_id) {
        this.id = ko.observable(id);
        this.subject = ko.observable(subject);
        this.body = ko.observable(body);
        this.group_id = ko.observable(group_id);
    };

    var ViewModel = function () {
        var self = this;

        self.task = new Task(null, null, null, 1); // group_id固定
        self.tasks = ko.observableArray();

        self.selectedTask;

        self.alertSuccessMessage = ko.observable();
        self.alertErrorMessage = ko.observable();

        self.list = function () {
            $.ajax({
                url: '/api/v1/tasks',
                success: function (response) {
                    self.tasks(response.map(function (task) {
                        return new Task(task.id, task.subject, task.body, task.group.id);
                    }));
                },
                error: function (response) {
                    console.log(response);
                }
            });
        }.bind(self);

        self.find = function (item) {
            console.log(item.id());
            self.selectedTask = item;
            self.task.id(item.id());
            self.task.subject(item.subject());
            self.task.body(item.body());
            self.task.group_id(item.group_id());
            $('#taskModal').modal('show');
        }.bind(self);

        self.create = function () {
            $.ajax({
                url: '/api/v1/tasks',
                method: 'POST',
                contentType: 'application/json',
                data: ko.toJSON({'task': self.task}),
                success: function (response) {
                    console.log(response);
                    self.tasks.push(new Task(response.id, response.subject, response.body, response.group_id));
                    self.cancel();
                    self.alertSuccessMessage('success');
                },
                error: function (response) {
                    console.log(response);
                    self.alertErrorMessage('error');
                }

            });
        }.bind(self);

        self.edit = function () {
            $.ajax({
                url: '/api/v1/tasks/' + self.task.id(),
                method: 'PATCH',
                contentType: 'application/json',
                data: ko.toJSON({'task': self.task}),
                success: function (response) {
                    console.log(response);
                    self.selectedTask.subject(response.subject);
                    self.selectedTask.body(response.body);
                    self.selectedTask.group_id(response.group.id);
                    self.cancel();
                    self.alertSuccessMessage('success');
                },
                error: function (response) {
                    console.log(response);
                    self.alertErrorMessage('error');
                }
            });
        }.bind(self);

        self.cancel = function () {
            self.task.id(null);
            self.task.subject(null);
            self.task.body(null);
            self.task.group_id(1); // group_id固定
            $('#taskModal').modal('hide');
        }.bind(self);

        self.list();
    };

    var viewModel = new ViewModel();
    ko.applyBindings(viewModel);
}());
