var ViewModel = require('../../js/src/viewmodel.js');
var Task = require('../../js/src/task.js');
var Group = require('../../js/src/group.js');

describe('task', function () {
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
                    'tasks': [
                        {
                            'id': 1,
                            'subject': 'Happy task',
                            'body': 'Create something new',
                            'group_id': 1
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

    it('findTask', function () {
        expect(viewModel.task.id()).toBe(null);
        var task = new Task(1, 'Happy task', 'Create something new', 1);
        viewModel.findTask({}, task);
        expect(viewModel.task.id()).toBe(task.id());
    });

    it('createTask', function () {
        spyOn($, 'ajax').and.callFake(function() {
            var d = $.Deferred();
            d.resolve({
                'id': 1,
                'subject': 'Happy task',
                'body': 'Create something new',
                'group_id': 1
            });
            return d.promise();
        });

        var group = new Group(1, 'Happy group');
        viewModel.selectedGroup = group;
        var beforeCount = group.tasks().length;
        viewModel.task.subject('Happy task');
        viewModel.task.body('Create something new');
        viewModel.task.group_id(1);
        viewModel.createTask();
        expect(group.tasks().length).toBe(beforeCount + 1);
    });

    it('editTask', function () {
        spyOn($, 'ajax').and.callFake(function() {
            var d = $.Deferred();
            d.resolve({
                'id': 1,
                'subject': 'Edit task',
                'body': 'Create something new',
                'group': {
                    'id': 1,
                    'subject': 'Happy group'
                }
            });
            return d.promise();
        });

        var task = new Task(1, 'Happy task', 'Create something new', 1);
        viewModel.findTask({}, task);
        expect(viewModel.selectedTask.subject()).toBe('Happy task');
        viewModel.task.subject('Edit task');
        viewModel.editTask();
        expect(viewModel.selectedTask.subject()).toBe('Edit task');
    });

    it('deleteTask', function () {
        spyOn($, 'ajax').and.callFake(function() {
            var d = $.Deferred();
            d.resolve();
            return d.promise();
        });

        var group = new Group(1, 'Happy group');
        group.tasks().push(new Task(1, 'Happy task', 'Create something new', 1));
        group.tasks().push(new Task(2, 'Delete task', 'This task is wrong', 1));
        expect(group.tasks().length).toBe(2);
        viewModel.selectedGroup = group;
        viewModel.selectedTask = group.tasks()[1];
        viewModel.deleteTask();
        expect(group.tasks().length).toBe(1);
    });
});
