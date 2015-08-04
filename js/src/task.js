'use strict';

var Task = function (id, subject, body, group_id) {
    this.id = ko.observable(id);
    this.subject = ko.observable(subject);
    this.body = ko.observable(body);
    this.group_id = ko.observable(group_id);
};
