var BaseModel = require('./basemodel.js');
var Group = function (id, board_id, subject, priority) {
    this.id = ko.observable(id);
    this.board_id = ko.observable(board_id);
    this.subject = ko.observable(subject);
    this.priority = ko.observable(priority);

    this.tasks = ko.observableArray();

    this.apiUrl = '/api/v1/groups';
};

Group.prototype = BaseModel.prototype;

module.exports = Group;
