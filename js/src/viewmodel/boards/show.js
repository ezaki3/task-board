var BaseViewModel = require('../baseviewmodel.js');
var Task = require('../../model/task.js');
var Group = require('../../model/group.js');
var Board = require('../../model/board.js');
var User = require('../../model/user.js');
var ViewModel = function () {
    var self = this;

    self.task = new Task(null, null, null, null, null);
    self.selectedTask;

    self.group = new Group(null, null, null, null);
    self.selectedGroup;

    self.board = new Board(null, null, null);

    self.baseViewModel = new BaseViewModel();
    self.baseViewModel.invalidMessages({
        'group': self.group.invalidMessages,
        'task': self.task.invalidMessages
    });

    self.selectedUsers = ko.observableArray();
    self.suggestedUsers = ko.observableArray();
    self.member = ko.observable();

    self.groupValidation = ko.computed(function () {
        if (self.group.board_id() == null) {
            return false;
        }

        var group = new Group(null, self.group.board_id(), self.group.subject(), self.group.priority());
        group.validation(ko.toJSON({'group': group}), 'collection')
            .done(function (response) {
                console.log(response);
                self.baseViewModel.invalidMessages({
                    'group': self.group.invalidMessages,
                    'task': self.task.invalidMessages
                });
            })
            .fail(function (response) {
                console.log(response);
                if (response.status == 422) {
                    self.baseViewModel.invalidMessages({
                        'group': response.responseJSON,
                        'task': self.task.invalidMessages
                    });
                }
            });
    });

    self.taskValidation = ko.computed(function () {
        if (self.task.group_id() == null) {
            return false;
        }

        var task = new Task(null, self.task.group_id(), self.task.subject(), self.task.body(), self.task.priority());
        task.validation(ko.toJSON({'task': task}), 'collection')
            .done(function (response) {
                console.log(response);
                self.baseViewModel.invalidMessages({
                    'group': self.group.invalidMessages,
                    'task': self.task.invalidMessages
                });
            })
            .fail(function (response) {
                console.log(response);
                if (response.status == 422) {
                    self.baseViewModel.invalidMessages({
                        'group': self.group.invalidMessages,
                        'task': $.extend({}, self.task.invalidMessages, response.responseJSON)
                    });
                }
            });
    });

    self.suggestUser = ko.computed(function () {
        var pattern = new RegExp(self.member());
        self.suggestedUsers([]);
        for (k in self.board.members()) {
            if (pattern.test(self.board.members()[k].nickname())) {
                self.suggestedUsers.push(new User(
                    self.board.members()[k].id(),
                    self.board.members()[k].nickname(),
                    self.board.members()[k].avatar_url()
                ));
            }
        }
        if (self.suggestedUsers().length == 0) {
            self.suggestedUsers(self.board.members());
        }
    });

    self.updateItems = function (board) {
        if (self.board.id() != board.id) {
            return false;
        }
        self.board.subject(board.subject);
        self.board.priority(board.priority);
        self.board.groups(board.groups.map(function (group) {
            var g = new Group(group.id, board.id, group.subject, group.priority);
            g.tasks(group.tasks.map(function (task) {
                return new Task(task.id, group.id, task.subject, task.body, task.priority);
            }));
            g.tasks.group_id = group.id; // use to moveTask
            return g;
        }));
        self.board.members(board.members.map(function (user) {
            return new User(user.id, user.nickname, user.avatar_url);
        }));
    };

    self.baseViewModel.channel.bind('Group', function(data) {
        self.updateItems(JSON.parse(data));
    });

    self.baseViewModel.channel.bind('Task', function(data) {
        self.updateItems(JSON.parse(data));
    });

    self.listGroup = function (id) {
        self.board.find(id)
            .done(function (response) {
                self.board.id(response.id);
                self.updateItems(response);
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

    self.openTaskModal = function (group) {
        self.selectedGroup = group;
        self.task.id(null);
        self.task.subject(null);
        self.task.body(null);
        self.task.group_id(group.id());
        self.task.priority(null);
        self.selectedUsers([]);
        $('#taskModal').modal('show');
    }.bind(self);

    self.openGroupModal = function () {
        self.group.id(null);
        self.group.board_id(self.board.id());
        self.group.subject(null);
        self.group.priority(null);
        $('#groupModal').modal('show');
    }.bind(self);

    self.findTask = function (group, task) {
        self.selectedTask = task;
        self.selectedGroup = group;
        self.task.find(task.id())
            .done(function (response) {
                console.log(response);
                self.task.id(response.id);
                self.task.subject(response.subject);
                self.task.body(response.body);
                self.task.group_id(response.group.id);
                self.task.priority(response.priority);
                self.task.members(response.members);
                self.selectedUsers(response.members.map(function (user) {
                    return user.id;
                }));
                $('#taskModal').modal('show');
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

    self.findGroup = function (group) {
        self.selectedGroup = group;
        self.group.find(group.id())
            .done(function (response) {
                console.log(response);
                self.group.id(response.id);
                self.group.board_id(response.board.id);
                self.group.subject(response.subject);
                self.group.priority(response.priority);
                $('#groupModal').modal('show');
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

    self.createTask = function () {
        var task = new Task(null, self.task.group_id(), self.task.subject(), self.task.body(), self.task.priority());
        self.task.members_attributes(self.selectedUsers().map(function (id) {
            return {'user_id': id};
        }));
        task.create(ko.toJSON({'task': self.task}), 'collection')
            .done(function (response) {
                console.log(response);
                $('#taskModal').modal('hide');
                self.baseViewModel.alertSuccessMessage('success');
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

    self.createGroup = function () {
        var group = new Group(null, self.group.board_id(), self.group.subject(), self.group.priority());
        group.create(ko.toJSON({'group': group}), 'collection')
            .done(function (response) {
                console.log(response);
                $('#groupModal').modal('hide');
                self.baseViewModel.alertSuccessMessage('success');
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

    self.editTask = function () {
        self.task.members_attributes(self.selectedUsers().map(function (id) {
            return {'user_id': id};
        }));
        self.task.members().forEach(function (val) {
            if (self.selectedUsers().indexOf(val.id) == -1) {
                self.task.members_attributes.push({
                    'user_id': val.id,
                    'release': 1
                });
            }
        });
        self.task.edit(self.task.id(), ko.toJSON({'task': self.task}))
            .done(function (response) {
                console.log(response);
                self.selectedTask.subject(response.subject);
                self.selectedTask.body(response.body);
                $('#taskModal').modal('hide');
                self.baseViewModel.alertSuccessMessage('success');
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

    self.editGroup = function () {
        self.group.edit(self.group.id(), ko.toJSON({'group': self.group}))
            .done(function (response) {
                console.log(response);
                self.selectedGroup.subject(response.subject);
                $('#groupModal').modal('hide');
                self.baseViewModel.alertSuccessMessage('success');
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

    self.deleteTask = function () {
        self.task.delete(self.selectedTask.id())
            .done(function (response) {
                console.log(response);
                self.selectedGroup.tasks.remove(self.selectedTask);
                $('#taskModal').modal('hide');
                self.baseViewModel.alertSuccessMessage('success');
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

    self.deleteGroup = function () {
        self.group.delete(self.selectedGroup.id())
            .done(function (response) {
                console.log(response);
                self.board.groups.remove(self.selectedGroup);
                $('#groupModal').modal('hide');
                self.baseViewModel.alertSuccessMessage('success');
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

    self.moveTask = function (sort) {
        self.selectedTask = sort.item;
        self.task.id(sort.item.id());
        self.task.group_id(sort.targetParent.group_id);
        self.task.subject(sort.item.subject());
        self.task.body(sort.item.body());
        self.task.priority(sort.targetIndex + 1);

        self.task.edit(self.task.id(), ko.toJSON({'task': self.task}))
            .done(function (response) {
                console.log(response);
                self.selectedTask.group_id(response.group.id);
                self.selectedTask.priority(response.priority);
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

    self.moveGroup = function (sort) {
        self.selectedGroup = sort.item;
        self.group.id(sort.item.id());
        self.group.board_id(sort.item.board_id());
        self.group.subject(sort.item.subject());
        self.group.priority(sort.targetIndex + 1);

        self.group.edit(self.group.id(), ko.toJSON({'group': self.group}))
            .done(function (response) {
                console.log(response);
                self.selectedGroup.priority(response.priority);
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
};

module.exports = ViewModel;
