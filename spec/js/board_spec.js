var ViewModel = require('../../js/src/viewmodel/boards/index.js');
var Board = require('../../js/src/model/board.js');
var User = require('../../js/src/model/user.js');

describe('board', function () {
    var viewModel = null;

    beforeEach(function () {
        viewModel = new ViewModel();
    });

    afterEach(function () {
        viewModel = null;
    });

    it('suggestUser', function () {
        spyOn($, 'ajax').and.callFake(function() {
            var d = $.Deferred();
            d.resolve([
                {
                    'id': 1,
                    'nickname': 'abc',
                    'avatar_url': 'https://avater_url.com/1'
                },
                {
                    'id': 2,
                    'nickname': 'xyz',
                    'avatar_url': 'https://avater_url.com/2'
                }
            ]);
            return d.promise();
        });

        viewModel.listUser();

        viewModel.member('a');
        expect(viewModel.suggestedUsers().length).toBe(1);
        expect(viewModel.suggestedUsers()[0].nickname()).toBe('abc');

        viewModel.member('x');
        expect(viewModel.suggestedUsers().length).toBe(1);
        expect(viewModel.suggestedUsers()[0].nickname()).toBe('xyz');
    });

    it('listBoard', function () {
        spyOn($, 'ajax').and.callFake(function() {
            var d = $.Deferred();
            d.resolve([
                {
                    'id': 1,
                    'subject': 'Happy board',
                    'priority': 1,
                    'groups': []
                }
            ]);
            return d.promise();
        });

        viewModel.listBoard();
        expect(viewModel.boards().length).toBe(1);

        var board = viewModel.boards()[0];
        expect(board.id()).toBe(1);
        expect(board.subject()).toBe('Happy board');
    });

    it('listUser', function () {
        spyOn($, 'ajax').and.callFake(function() {
            var d = $.Deferred();
            d.resolve([
                {
                    'id': 1,
                    'nickname': 'Happy user',
                    'avatar_url': 'https://avater_url.com/'
                }
            ]);
            return d.promise();
        });

        viewModel.listUser();
        expect(viewModel.baseViewModel.users().length).toBe(1);

        var user = viewModel.baseViewModel.users()[0];
        expect(user.id()).toBe(1);
        expect(user.nickname()).toBe('Happy user');
    });

    it('toggleUser', function () {
        var user = new User(1, 'Happy user', 'https://avater_url.com/');
        expect(viewModel.selectedUsers().length).toBe(0);

        viewModel.toggleUser(user);
        expect(viewModel.selectedUsers().length).toBe(1);

        viewModel.toggleUser(user);
        expect(viewModel.selectedUsers().length).toBe(0);
    });

    it('findBoard', function () {
        expect(viewModel.board.id()).toBe(null);
        var board = new Board(1, 'Happy board', 1);
        viewModel.findBoard(board);
        expect(viewModel.board.id()).toBe(board.id());
    });

    it('validationSuccess', function () {
        spyOn($, 'ajax').and.callFake(function() {
            var d = $.Deferred();
            d.resolve({
                'id': null,
                'subject': 'Happy board',
                'priority': null,
                'groups': []
            });
            return d.promise();
        });

        viewModel.board.subject('Happy board');
        expect(viewModel.baseViewModel.invalidMessages().board.subject.length).toBe(0);
    });

    it('validationError', function () {
        spyOn($, 'ajax').and.callFake(function() {
            var d = $.Deferred();
            d.reject({
                'status': 422,
                'responseJSON': {
                    'subject': ["can't be blank"]
                }
            });
            return d.promise();
        });

        viewModel.board.subject('');
        expect(viewModel.baseViewModel.invalidMessages().board.subject.length).toBe(1);
    });

    xit('createBoard', function () {
        spyOn($, 'ajax').and.callFake(function() {
            var d = $.Deferred();
            d.resolve({
                'id': 1,
                'subject': 'Happy board',
                'priority': 1,
                'groups': []
            });
            return d.promise();
        });

        var beforeCount = viewModel.boards().length;
        viewModel.board.subject('Happy board');
        viewModel.board.priority(1);
        viewModel.createBoard();
        expect(viewModel.boards().length).toBe(beforeCount + 1);
    });

    it('editBoard', function () {
        spyOn($, 'ajax').and.callFake(function(params) {
            var method = params.method || 'GET';
            var response;
            if (method == 'PATCH') {
                response = {
                    'id': 1,
                    'subject': 'Edit board',
                    'priority': 1,
                    'groups': [],
                    'members': []
                };
            } else {
                response = {
                    'id': 1,
                    'subject': 'Happy board',
                    'priority': 1,
                    'groups': [],
                    'members': []
                };
            }
            var d = $.Deferred();
            d.resolve(response);
            return d.promise();
        });

        var board = new Board(1, 'Happy board', 1);
        viewModel.findBoard(board);
        expect(viewModel.selectedBoard.subject()).toBe('Happy board');
        viewModel.board.subject('Edit board');
        viewModel.editBoard();
        expect(viewModel.selectedBoard.subject()).toBe('Edit board');
    });

    it('deleteBoard', function () {
        spyOn($, 'ajax').and.callFake(function() {
            var d = $.Deferred();
            d.resolve();
            return d.promise();
        });

        viewModel.boards.push(new Board(1, 'Happy board', 1));
        viewModel.boards.push(new Board(2, 'Delete board', 2));
        expect(viewModel.boards().length).toBe(2);
        viewModel.selectedBoard = viewModel.boards()[1];
        viewModel.deleteBoard();
        expect(viewModel.boards().length).toBe(1);
    });

    it('moveBoard', function () {
        spyOn($, 'ajax').and.callFake(function() {
            var d = $.Deferred();
            d.resolve({
                'id': 1,
                'subject': 'Happy board',
                'priority': 1,
                'groups': []
            });
            return d.promise();
        });

        var board = new Board(1, 'Happy board', 2);
        expect(board.priority()).toBe(2);

        viewModel.moveBoard({
            item: board,
            targetIndex: 0
        });
        expect(viewModel.selectedBoard.priority()).toBe(1);
    });
});
