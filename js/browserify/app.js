(function e(t,n,r){function s(o,u){if(!n[o]){if(!t[o]){var a=typeof require=="function"&&require;if(!u&&a)return a(o,!0);if(i)return i(o,!0);var f=new Error("Cannot find module '"+o+"'");throw f.code="MODULE_NOT_FOUND",f}var l=n[o]={exports:{}};t[o][0].call(l.exports,function(e){var n=t[o][1][e];return s(n?n:e)},l,l.exports,e,t,n,r)}return n[o].exports}var i=typeof require=="function"&&require;for(var o=0;o<r.length;o++)s(r[o]);return s})({1:[function(require,module,exports){
'use strict';
var ViewModel = require('./viewmodel.js');
var viewModel = new ViewModel();
viewModel.listTask();
ko.applyBindings(viewModel);

},{"./viewmodel.js":3}],2:[function(require,module,exports){
var Task = function (id, subject, body, group_id) {
    this.id = ko.observable(id);
    this.subject = ko.observable(subject);
    this.body = ko.observable(body);
    this.group_id = ko.observable(group_id);

    this.apiUrl = '/api/v1/tasks';
};

Task.prototype.search = function () {
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

Task.prototype.create = function (data) {
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

Task.prototype.edit = function (id, data) {
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

Task.prototype.delete = function (id) {
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

module.exports = Task;

},{}],3:[function(require,module,exports){
var Task = require('./task.js');
var ViewModel = function () {
    var self = this;

    self.task = new Task(null, null, null, 1); // group_id固定
    self.tasks = ko.observableArray();

    self.selectedTask;

    self.alertSuccessMessage = ko.observable();
    self.alertErrorMessage = ko.observable();

    self.listTask = function () {
        self.task.search()
            .done(function (response) {
                self.tasks(response.map(function (task) {
                    return new Task(task.id, task.subject, task.body, task.group.id);
                }));
            })
            .fail(function (reponse) {
                console.log(response);
            });
    }.bind(self);

    self.findTask = function (item) {
        self.selectedTask = item;
        self.task.id(item.id());
        self.task.subject(item.subject());
        self.task.body(item.body());
        self.task.group_id(item.group_id());
        $('#taskModal').modal('show');
    }.bind(self);

    self.createTask = function () {
        self.task.create(ko.toJSON({'task': self.task}))
            .done(function (response) {
                console.log(response);
                self.tasks.push(new Task(response.id, response.subject, response.body, response.group_id));
                self.cancelTask();
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
                self.cancelTask();
                self.alertSuccessMessage('success');
            })
            .fail(function (response) {
                console.log(response);
                self.alertErrorMessage('error')
            });
    }.bind(self);

    self.cancelTask = function () {
        self.task.id(null);
        self.task.subject(null);
        self.task.body(null);
        self.task.group_id(1); // group_id固定
        $('#taskModal').modal('hide');
    }.bind(self);

    self.deleteTask = function () {
        self.task.delete(self.task.id())
            .done(function (response) {
                console.log(response);
                self.tasks.remove(self.selectedTask);
                self.cancelTask();
                self.alertSuccessMessage('success');
            })
            .fail(function (response) {
                console.log(response);
                self.alertErrorMessage('error');
            });
    }.bind(self);
};

module.exports = ViewModel;

},{"./task.js":2}]},{},[1]);
