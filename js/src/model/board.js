var BaseModel = require('./basemodel.js');
var Board = function (id, subject, priority) {
    this.id = ko.observable(id);
    this.subject = ko.observable(subject);
    this.priority = ko.observable(priority);

    this.groups = ko.observableArray();

    this.apiUrl = {
        'collection': null,
        'member': '/api/v1/boards'
    };

    this.invalidMessages = {
        'board': {
            'subject': []
        }
    };
};

Board.prototype = BaseModel.prototype;

module.exports = Board;
