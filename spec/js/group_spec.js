var ViewModel = require('../../js/src/viewmodel/boards/show.js');
var Group = require('../../js/src/model/group.js');

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
            d.resolve([
                {
                    'id': 1,
                    'subject': 'Happy group',
                    'priority': 1,
                    'tasks': [
                        {
                            'id': 1,
                            'subject': 'Happy task',
                            'body': 'Create something new',
                            'group_id': 1,
                            'priority': 1
                        }
                    ]
                }
            ]);
            return d.promise();
        });

        viewModel.listGroup();
        expect(viewModel.groups().length).toBe(1);

        var group = viewModel.groups()[0];
        expect(group.id()).toBe(1);
        expect(group.subject()).toBe('Happy group');

        var task = viewModel.groups()[0].tasks()[0];
        expect(task.id()).toBe(1);
        expect(task.subject()).toBe('Happy task');
        expect(task.body()).toBe('Create something new');
        expect(task.group_id()).toBe(1);
    });

    it('findGroup', function () {
        expect(viewModel.group.id()).toBe(null);
        var group = new Group(1, 'Happy group', 1);
        viewModel.findGroup(group);
        expect(viewModel.group.id()).toBe(group.id());
    });

    it('createGroup', function () {
        spyOn($, 'ajax').and.callFake(function() {
            var d = $.Deferred();
            d.resolve({
                'id': 1,
                'subject': 'Happy group',
                'priority': 1,
            });
            return d.promise();
        });

        var beforeCount = viewModel.groups().length;
        viewModel.group.subject('Happy group');
        viewModel.group.priority(1);
        viewModel.createGroup();
        expect(viewModel.groups().length).toBe(beforeCount + 1);
    });

    it('editGroup', function () {
        spyOn($, 'ajax').and.callFake(function() {
            var d = $.Deferred();
            d.resolve({
                'id': 1,
                'subject': 'Edit group',
                'priority': 1,
            });
            return d.promise();
        });

        var group = new Group(1, 'Happy group', 1);
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

        viewModel.groups.push(new Group(1, 'Happy group', 1));
        viewModel.groups.push(new Group(2, 'Delete group', 2));
        expect(viewModel.groups().length).toBe(2);
        viewModel.selectedGroup = viewModel.groups()[1];
        viewModel.deleteGroup();
        expect(viewModel.groups().length).toBe(1);
    });
});
