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

        self.save = function () {
            $.ajax({
                url: '/api/v1/tasks',
                method: 'POST',
                contentType: 'application/json',
                data: ko.toJSON({'task': self.task}),
                success: function (response) {
                    console.log(response);
                    self.tasks.push(new Task(response.id, response.subject, response.body, response.group_id));
                    self.task.id(null);
                    self.task.subject(null);
                    self.task.body(null);
                    self.task.group_id(1); // group_id固定
                    $('#taskModal').modal('hide');
                    self.alertSuccessMessage('success');
                },
                error: function (response) {
                    console.log(response);
                    self.alertErrorMessage('error');
                }

            });
        }.bind(self);

        self.list();
    };

    var viewModel = new ViewModel();
    ko.applyBindings(viewModel);
}());
