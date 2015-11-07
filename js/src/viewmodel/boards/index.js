var BaseViewModel = require('../baseviewmodel.js');
var Board = require('../../model/board.js');
var ViewModel = function () {
    var self = this;

    self.board = new Board(null, null, null);
    self.boards = ko.observableArray();
    self.selectedBoard;

    self.baseViewModel = new BaseViewModel();
    self.baseViewModel.invalidMessages({'board': self.board.invalidMessages});

    self.boardValidation = ko.computed(function () {
        self.board.validation(ko.toJSON({'board': self.board}))
            .done(function (response) {
                console.log(response);
                self.baseViewModel.invalidMessages({'board': self.board.invalidMessages});
            })
            .fail(function (response) {
                console.log(response);
                if (response.status == 422) {
                    self.baseViewModel.invalidMessages({'board': response.responseJSON});
                }
            });
    });

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
        self.board.find(board.id())
            .done(function (response) {
                console.log(response);
                self.board.id(board.id());
                self.board.subject(response.subject);
                self.board.priority(response.priority);
                $('#boardModal').modal('show');
            })
            .fail(function (response) {
                console.log(response);
                if (response.status == 401) {
                    $('#loginModal').modal('show');
                } else {
                    self.baseViewModel.alertErrorMessage('error');
                }
            });
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
                $('#boardModal').modal('hide');
                if (response.status == 401) {
                    $('#loginModal').modal('show');
                } else {
                    self.baseViewModel.alertErrorMessage('error');
                }
            });
    }.bind(self);

    self.editBoard = function () {
        self.board.edit(self.board.id(), ko.toJSON({'board': self.board}))
            .done(function (response) {
                console.log(response);
                self.selectedBoard.subject(response.subject);
                self.selectedBoard.priority(response.priority);
                $('#boardModal').modal('hide');
                self.baseViewModel.alertSuccessMessage('success');
            })
            .fail(function (response) {
                console.log(response);
                $('#boardModal').modal('hide');
                if (response.status == 401) {
                    $('#loginModal').modal('show');
                } else {
                    self.baseViewModel.alertErrorMessage('error');
                }
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
                $('#boardModal').modal('hide');
                if (response.status == 401) {
                    $('#loginModal').modal('show');
                } else {
                    self.baseViewModel.alertErrorMessage('error');
                }
            });
    }.bind(self);

    self.moveBoard = function (sort) {
        self.selectedBoard = sort.item;
        self.board.id(sort.item.id());
        self.board.subject(sort.item.subject());
        self.board.priority(sort.targetIndex + 1);

        self.board.edit(self.board.id(), ko.toJSON({'board': self.board}))
            .done(function (response) {
                console.log(response);
                self.selectedBoard.priority(response.priority);
            })
            .fail(function (response) {
                console.log(response);
                if (response.status == 401) {
                    $('#loginModal').modal('show');
                }
            });
    }.bind(self);
};

module.exports = ViewModel;
