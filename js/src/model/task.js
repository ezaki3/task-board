var BaseModel = require('./basemodel.js');
var Task = function (id, group_id, subject, body, priority) {
    this.id = ko.observable(id);
    this.group_id = ko.observable(group_id);
    this.subject = ko.observable(subject);
    this.body = ko.observable(body);
    this.priority = ko.observable(priority);

    this.apiUrl = {
        'collection': '/api/v1/groups/' + group_id + '/tasks',
        'member': '/api/v1/tasks'
    };
};

Task.prototype = BaseModel.prototype;

module.exports = Task;
