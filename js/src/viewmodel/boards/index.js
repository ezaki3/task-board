var BaseViewModel = require('../baseviewmodel.js');
var Board = require('../../model/board.js');
var User = require('../../model/user.js');
var ViewModel = function () {
    var self = this;

    self.board = new Board(null, null, null);
    self.boards = ko.observableArray();
    self.selectedBoard;

    self.baseViewModel = new BaseViewModel();
    self.baseViewModel.invalidMessages({'board': self.board.invalidMessages});

    self.selectedUsers = ko.observableArray();
    self.suggestedUsers = ko.observableArray();
    self.member = ko.observable();

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

    self.suggestUser = ko.computed(function () {
        var pattern = new RegExp(self.member());
        self.suggestedUsers([]);
        for (k in self.baseViewModel.users()) {
            if (pattern.test(self.baseViewModel.users()[k].nickname())) {
                self.suggestedUsers.push(new User(
                    self.baseViewModel.users()[k].id(),
                    self.baseViewModel.users()[k].nickname(),
                    self.baseViewModel.users()[k].avatar_url()
                ));
            }
        }
        console.log('suggest length: ' + self.suggestedUsers().length);
        if (self.suggestedUsers().length == 0) {
            self.suggestedUsers(self.baseViewModel.users());
        }
    });

    self.baseViewModel.channel.bind('Board', function(data) {
      self.boards(JSON.parse(data).map(function (board) {
          return new Board(board.id, board.subject, board.priority);
      }));
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

    self.listUser = function () {
        self.baseViewModel.user.search()
            .done(function (response) {
                self.baseViewModel.users(response.map(function (user) {
                    return new User(user.id, user.nickname, user.avatar_url);
                }));
                self.suggestedUsers(self.baseViewModel.users());
            })
            .fail(function (response) {
                console.log(response);
            });
    }.bind(self);

    self.toggleUser = function (user) {
        var idx = self.selectedUsers.indexOf(user.id());
        if (idx == -1) {
            self.selectedUsers.push(user.id());
        } else {
            self.selectedUsers.splice(idx, 1);
        }
    }.bind(self);

    self.openBoardModal = function () {
        self.board.id(null);
        self.board.subject(null);
        self.board.priority(null);
        self.selectedUsers([]);
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
                self.board.members(response.members);
                self.selectedUsers(response.members.map(function (user) {
                    return user.id;
                }));
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
        self.board.members_attributes(self.selectedUsers().map(function (id) {
            return {'user_id': id};
        }));
        self.board.create(ko.toJSON({'board': self.board}))
            .done(function (response) {
                console.log(response);
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
        self.board.members_attributes(self.selectedUsers().map(function (id) {
            return {'user_id': id};
        }));
        self.board.members().forEach(function (val) {
            if (self.selectedUsers().indexOf(val.id) == -1) {
                self.board.members_attributes.push({
                    'user_id': val.id,
                    'release': 1
                });
            }
        });

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
