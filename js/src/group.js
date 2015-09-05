var Model = require('./model.js');
var Group = function (id, subject, priority) {
    this.id = ko.observable(id);
    this.subject = ko.observable(subject);
    this.priority = ko.observable(priority);

    this.tasks = ko.observableArray();

    this.apiUrl = '/api/v1/groups';
};

Group.prototype = Model.prototype;

module.exports = Group;
