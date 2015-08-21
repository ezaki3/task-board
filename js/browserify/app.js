(function e(t,n,r){function s(o,u){if(!n[o]){if(!t[o]){var a=typeof require=="function"&&require;if(!u&&a)return a(o,!0);if(i)return i(o,!0);var f=new Error("Cannot find module '"+o+"'");throw f.code="MODULE_NOT_FOUND",f}var l=n[o]={exports:{}};t[o][0].call(l.exports,function(e){var n=t[o][1][e];return s(n?n:e)},l,l.exports,e,t,n,r)}return n[o].exports}var i=typeof require=="function"&&require;for(var o=0;o<r.length;o++)s(r[o]);return s})({1:[function(require,module,exports){
'use strict';
var ViewModel = require('./viewmodel.js');
var viewModel = new ViewModel();
//viewModel.listTask();
viewModel.listGroup();
ko.applyBindings(viewModel);

},{"./viewmodel.js":5}],2:[function(require,module,exports){
var Model = require('./model.js');
var Group = function (id, subject) {
    this.id = ko.observable(id);
    this.subject = ko.observable(subject);

    this.tasks = ko.observableArray();

    this.apiUrl = '/api/v1/groups';
};

Group.prototype = Model.prototype;

module.exports = Group;

},{"./model.js":3}],3:[function(require,module,exports){
var Model = function () {
    this.apiUrl;
};

Model.prototype.search = function () {
    var d = $.Deferred();
    $.ajax({url: this.apiUrl})
        .done(function (response) {
            d.resolve(response);
        })
        .fail(function (response) {
            d.reject(response);
        });
    return d.promise();
};

Model.prototype.create = function (data) {
    var d = $.Deferred();
    $.ajax({
        url: this.apiUrl,
        method: 'POST',
        contentType: 'application/json',
        data: data})
        .done(function (response) {
            d.resolve(response);
        })
        .fail(function (response) {
            d.reject(response);
        });
    return d.promise();
};

Model.prototype.edit = function (id, data) {
    var d = $.Deferred();
    $.ajax({
        url: this.apiUrl + '/' + id,
        method: 'PATCH',
        contentType: 'application/json',
        data: data})
        .done(function (response) {
            d.resolve(response);
        })
        .fail(function (response) {
            d.reject(response);
        });
    return d.promise();
};

Model.prototype.delete = function (id) {
    var d = $.Deferred();
    $.ajax({
        url: this.apiUrl + '/' + id,
        method: 'DELETE'})
        .done(function (response) {
            d.resolve(response);
        })
        .fail(function (response) {
            d.reject(response);
        });
    return d.promise();
};

module.exports = Model;

},{}],4:[function(require,module,exports){
var Model = require('./model.js');
var Task = function (id, subject, body, group_id) {
    this.id = ko.observable(id);
    this.subject = ko.observable(subject);
    this.body = ko.observable(body);
    this.group_id = ko.observable(group_id);

    this.apiUrl = '/api/v1/tasks';
};

Task.prototype = Model.prototype;

module.exports = Task;

},{"./model.js":3}],5:[function(require,module,exports){
var Task = require('./task.js');
var Group = require('./group.js');
var ViewModel = function () {
    var self = this;

    self.task = new Task(null, null, null, null);
    self.selectedTask;

    self.group = new Group(null, null);
    self.groups = ko.observableArray();
    self.selectedGroup;

    self.alertSuccessMessage = ko.observable();
    self.alertErrorMessage = ko.observable();

    self.listGroup = function () {
        self.group.search()
            .done(function (response) {
                self.groups(response.map(function (group) {
                    var g = new Group(group.id, group.subject);
                    g.tasks(group.tasks.map(function (task) {
                        return new Task(task.id, task.subject, task.body, task.group_id);
                    }));
                    return g;
                }));
            })
            .fail(function (response) {
                console.log(response);
            });
    }.bind(self);

    self.openTaskModal = function (group) {
        self.selectedGroup = group;
        self.task.id(null);
        self.task.subject(null);
        self.task.body(null);
        self.task.group_id(group.id());
        $('#taskModal').modal('show');
    }.bind(self);

    self.findTask = function (group, task) {
        self.selectedTask = task;
        self.selectedGroup = group;
        self.task.id(task.id());
        self.task.subject(task.subject());
        self.task.body(task.body());
        self.task.group_id(task.group_id());
        $('#taskModal').modal('show');
    }.bind(self);

    self.createTask = function () {
        self.task.create(ko.toJSON({'task': self.task}))
            .done(function (response) {
                console.log(response);
                self.selectedGroup.tasks.push(new Task(response.id, response.subject, response.body, response.group_id));
                $('#taskModal').modal('hide');
                self.alertSuccessMessage('success');
            })
            .fail(function (response) {
                console.log(response);
                self.alertErrorMessage('error');
            });
    }.bind(self);

    self.editTask = function () {
        self.task.edit(self.task.id(), ko.toJSON({'task': self.task}))
            .done(function (response) {
                console.log(response);
                self.selectedTask.subject(response.subject);
                self.selectedTask.body(response.body);
                self.selectedTask.group_id(response.group.id);
                $('#taskModal').modal('hide');
                self.alertSuccessMessage('success');
            })
            .fail(function (response) {
                console.log(response);
                self.alertErrorMessage('error')
            });
    }.bind(self);

    self.deleteTask = function () {
        self.task.delete(self.selectedTask.id())
            .done(function (response) {
                console.log(response);
                self.selectedGroup.tasks.remove(self.selectedTask);
                $('#taskModal').modal('hide');
                self.alertSuccessMessage('success');
            })
            .fail(function (response) {
                console.log(response);
                self.alertErrorMessage('error');
            });
    }.bind(self);
};

module.exports = ViewModel;

},{"./group.js":2,"./task.js":4}]},{},[1]);
