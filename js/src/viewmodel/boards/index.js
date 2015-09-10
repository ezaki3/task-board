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
