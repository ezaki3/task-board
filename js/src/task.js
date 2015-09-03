var Model = require('./model.js');
var Task = function (id, subject, body, group_id, priority) {
    this.id = ko.observable(id);
    this.subject = ko.observable(subject);
    this.body = ko.observable(body);
    this.group_id = ko.observable(group_id);
    this.priority = ko.observable(priority);

    this.apiUrl = '/api/v1/tasks';
};

Task.prototype = Model.prototype;

module.exports = Task;
