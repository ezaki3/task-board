var Model = require('./model.js');
var Group = function (id, subject) {
    this.id = ko.observable(id);
    this.subject = ko.observable(subject);

    this.apiUrl = '/api/v1/groups';
};

Group.prototype = Model.prototype;

module.exports = Group;
