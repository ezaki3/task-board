var ViewModel = require('../../js/src/viewmodel.js');
var Task = require('../../js/src/task.js');

describe('task', function () {
    var viewModel = null;

    beforeEach(function () {
        viewModel = new ViewModel();
    });

    afterEach(function () {
        viewModel = null;
    });

    it('listTask', function () {
        spyOn($, 'ajax').and.callFake(function() {
            var d = $.Deferred();
            d.resolve([
                {
                    'id': 1,
                    'subject': 'Happy task',
                    'body': 'Create something new',
                    'group': {
                        'id': 1,
                        'subject': 'Happy group'
                    }
                }
            ]);
            return d.promise();
        });

        viewModel.listTask();
        expect(viewModel.tasks().length).toBe(1);

        var task = viewModel.tasks()[0];
        expect(task.id()).toBe(1);
        expect(task.subject()).toBe('Happy task');
        expect(task.body()).toBe('Create something new');
        expect(task.group_id()).toBe(1);
    });

    it('findTask', function () {
        expect(viewModel.task.id()).toBe(null);
        var task = new Task(1, 'Happy task', 'Create something new', 1);
        viewModel.findTask(task);
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

        var beforeCount = viewModel.tasks().length;
        viewModel.task.subject('Happy task');
        viewModel.task.body('Create something new');
        viewModel.task.group_id(1);
        viewModel.createTask();
        expect(viewModel.tasks().length).toBe(beforeCount + 1);
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
        viewModel.findTask(task);
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

        viewModel.tasks.push(new Task(1, 'Happy task', 'Create something new', 1));
        viewModel.tasks.push(new Task(2, 'Delete task', 'This task is wrong', 1));
        expect(viewModel.tasks().length).toBe(2);
        viewModel.selectedTask = viewModel.tasks()[1];
        viewModel.deleteTask();
        expect(viewModel.tasks().length).toBe(1);
    });
});
