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
        self.tasks = ko.observableArray();

        self.list = function () {
            $.ajax({
                url: '/tasks.json',
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

        self.list();
    };

    var viewModel = new ViewModel();
    ko.applyBindings(viewModel);
}());
