var ViewModel = require('../../js/src/viewmodel/boards/index.js');
var Board = require('../../js/src/model/board.js');

describe('board', function () {
    var viewModel = null;

    beforeEach(function () {
        viewModel = new ViewModel();
    });

    afterEach(function () {
        viewModel = null;
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

    it('findBoard', function () {
        expect(viewModel.board.id()).toBe(null);
        var board = new Board(1, 'Happy board', 1);
        viewModel.findBoard(board);
        expect(viewModel.board.id()).toBe(board.id());
    });

    it('createBoard', function () {
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
        spyOn($, 'ajax').and.callFake(function() {
            var d = $.Deferred();
            d.resolve({
                'id': 1,
                'subject': 'Edit board',
                'priority': 1,
                'groups': []
            });
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
});
