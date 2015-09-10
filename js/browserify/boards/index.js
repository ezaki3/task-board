(function e(t,n,r){function s(o,u){if(!n[o]){if(!t[o]){var a=typeof require=="function"&&require;if(!u&&a)return a(o,!0);if(i)return i(o,!0);var f=new Error("Cannot find module '"+o+"'");throw f.code="MODULE_NOT_FOUND",f}var l=n[o]={exports:{}};t[o][0].call(l.exports,function(e){var n=t[o][1][e];return s(n?n:e)},l,l.exports,e,t,n,r)}return n[o].exports}var i=typeof require=="function"&&require;for(var o=0;o<r.length;o++)s(r[o]);return s})({1:[function(require,module,exports){
'use strict';
var ViewModel = require('../viewmodel/boards/index.js');
var viewModel = new ViewModel();
viewModel.listBoard();
ko.applyBindings(viewModel);

},{"../viewmodel/boards/index.js":5}],2:[function(require,module,exports){
var BaseModel = function () {
    this.apiUrl;
};

BaseModel.prototype.search = function () {
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

BaseModel.prototype.create = function (data) {
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

BaseModel.prototype.edit = function (id, data) {
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

BaseModel.prototype.delete = function (id) {
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

module.exports = BaseModel;

},{}],3:[function(require,module,exports){
var BaseModel = require('./basemodel.js');
var Board = function (id, subject, priority) {
    this.id = ko.observable(id);
    this.subject = ko.observable(subject);
    this.priority = ko.observable(priority);

    this.groups = ko.observableArray();

    this.apiUrl = '/api/v1/boards';
};

Board.prototype = BaseModel.prototype;

module.exports = Board;

},{"./basemodel.js":2}],4:[function(require,module,exports){
var BaseViewModel = function () {
    this.alertSuccessMessage = ko.observable();
    this.alertErrorMessage = ko.observable();
};

module.exports = BaseViewModel;

},{}],5:[function(require,module,exports){
var BaseViewModel = require('../baseviewmodel.js');
var Board = require('../../model/board.js');
var ViewModel = function () {
    var self = this;

    self.board = new Board(null, null, null, null);
    self.boards = ko.observableArray();
    self.selectedBoard;

    self.baseViewModel = new BaseViewModel();

    self.listBoard = function () {
        self.board.search()
            .done(function (response) {
                self.boards(response.map(function (board) {
                    return new Board(board.id, board.subject, board.priority);
                }));
            })
            .fail(function (response) {
                console.log(response);
            });
    }.bind(self);

    self.openBoardModal = function () {
        self.board.id(null);
        self.board.subject(null);
        self.board.priority(null);
        $('#boardModal').modal('show');
    }.bind(self);

    self.findBoard = function (board) {
        self.selectedBoard = board;
        self.board.id(board.id());
        self.board.subject(board.subject());
        $('#boardModal').modal('show');
    }.bind(self);

    self.createBoard = function () {
        self.board.create(ko.toJSON({'board': self.board}))
            .done(function (response) {
                console.log(response);
                self.boards.push(new Board(response.id, response.subject, response.priority));
                $('#boardModal').modal('hide');
                self.baseViewModel.alertSuccessMessage('success');
            })
            .fail(function (response) {
                console.log(response);
                self.baseViewModel.alertErrorMessage('error');
            });
    }.bind(self);

    self.editBoard = function () {
        self.board.edit(self.board.id(), ko.toJSON({'board': self.board}))
            .done(function (response) {
                console.log(response);
                self.selectedBoard.subject(response.subject);
                $('#boardModal').modal('hide');
                self.baseViewModel.alertSuccessMessage('success');
            })
            .fail(function (response) {
                console.log(response);
                self.baseViewModel.alertErrorMessage('error')
            });
    }.bind(self);

    self.deleteBoard = function () {
        self.board.delete(self.selectedBoard.id())
            .done(function (response) {
                console.log(response);
                self.boards.remove(self.selectedBoard);
                $('#boardModal').modal('hide');
                self.baseViewModel.alertSuccessMessage('success');
            })
            .fail(function (response) {
                console.log(response);
                self.baseViewModel.alertErrorMessage('error');
            });
    }.bind(self);
};

module.exports = ViewModel;

},{"../../model/board.js":3,"../baseviewmodel.js":4}]},{},[1]);
