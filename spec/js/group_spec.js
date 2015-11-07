var ViewModel = require('../../js/src/viewmodel/boards/show.js');
var Group = require('../../js/src/model/group.js');
var Board = require('../../js/src/model/board.js');

describe('group', function () {
    var viewModel = null;

    beforeEach(function () {
        viewModel = new ViewModel();
    });

    afterEach(function () {
        viewModel = null;
    });

    it('listGroup', function () {
        spyOn($, 'ajax').and.callFake(function() {
            var d = $.Deferred();
            d.resolve(
                {
                    'id': 1,
                    'subject': 'Happy board',
                    'priority': 1,
                    'groups': [
                        {
                            'id': 1,
                            'subject': 'Happy group',
                            'priority': 1,
                            'tasks': [
                                {
                                    'id': 1,
                                    'subject': 'Happy task',
                                    'body': 'Create something new',
                                    'priority': 1,
                                }
                            ]
                        }
                    ]
                }
            );
            return d.promise();
        });

        viewModel.listGroup(1);
        expect(viewModel.board.id()).toBe(1);
        expect(viewModel.board.subject()).toBe('Happy board');
        expect(viewModel.board.groups().length).toBe(1);

        var group = viewModel.board.groups()[0];
        expect(group.id()).toBe(1);
        expect(group.subject()).toBe('Happy group');

        var task = viewModel.board.groups()[0].tasks()[0];
        expect(task.id()).toBe(1);
        expect(task.subject()).toBe('Happy task');
        expect(task.body()).toBe('Create something new');
        expect(task.group_id()).toBe(1);
    });

    it('findGroup', function () {
        spyOn($, 'ajax').and.callFake(function() {
            var d = $.Deferred();
            d.resolve({
                'id': 1,
                'subject': 'Happy group',
                'priority': 1,
                'board': {
                    'id': 1,
                    'subject': 'Happy board',
                    'priority': 1
                }
            });
            return d.promise();
        });

        expect(viewModel.group.id()).toBe(null);
        var group = new Group(1, 1, 'Happy group', 1);
        viewModel.findGroup(group);
        expect(viewModel.group.id()).toBe(group.id());
    });

    it('validationSuccess', function () {
        spyOn($, 'ajax').and.callFake(function() {
            var d = $.Deferred();
            d.resolve({
                'id': null,
                'subject': 'Happy group',
                'priority': null,
                'board': {
                    'id': 1,
                    'subject': 'Happy board',
                    'priority': 1
                }
            });
            return d.promise();
        });

        viewModel.group.board_id(1);
        viewModel.group.subject('Happy group');
        expect(viewModel.baseViewModel.invalidMessages().group.subject.length).toBe(0);
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

        viewModel.group.board_id(1);
        viewModel.group.subject('');
        expect(viewModel.baseViewModel.invalidMessages().group.subject.length).toBe(1);
    });

    it('createGroup', function () {
        spyOn($, 'ajax').and.callFake(function() {
            var d = $.Deferred();
            d.resolve({
                'id': 1,
                'subject': 'Happy group',
                'priority': 1,
                'board': {
                    'id': 1,
                    'subject': 'Happy board',
                    'priority': 1
                }
            });
            return d.promise();
        });

        var board = new Board(1, 'Happy board', 1);
        var beforeCount = viewModel.board.groups().length;
        viewModel.group.board_id(1);
        viewModel.group.subject('Happy group');
        viewModel.group.priority(1);
        viewModel.createGroup();
        expect(viewModel.board.groups().length).toBe(beforeCount + 1);
    });

    it('editGroup', function () {
        spyOn($, 'ajax').and.callFake(function() {
            var d = $.Deferred();
            d.resolve({
                'id': 1,
                'subject': 'Edit group',
                'priority': 1,
                'board': {
                    'id': 1,
                    'subject': 'Happy board',
                    'priority': 1
                }
            });
            return d.promise();
        });

        var group = new Group(1, 1, 'Happy group', 1);
        viewModel.findGroup(group);
        expect(viewModel.selectedGroup.subject()).toBe('Happy group');
        viewModel.group.subject('Edit group');
        viewModel.editGroup();
        expect(viewModel.selectedGroup.subject()).toBe('Edit group');
    });

    it('deleteGroup', function () {
        spyOn($, 'ajax').and.callFake(function() {
            var d = $.Deferred();
            d.resolve();
            return d.promise();
        });

        viewModel.board.groups.push(new Group(1, 'Happy group', 1));
        viewModel.board.groups.push(new Group(2, 'Delete group', 2));
        expect(viewModel.board.groups().length).toBe(2);
        viewModel.selectedGroup = viewModel.board.groups()[1];
        viewModel.deleteGroup();
        expect(viewModel.board.groups().length).toBe(1);
    });
});
