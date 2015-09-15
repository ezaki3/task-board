var ViewModel = require('../../js/src/viewmodel/boards/show.js');
var Task = require('../../js/src/model/task.js');
var Group = require('../../js/src/model/group.js');

describe('task', function () {
    var viewModel = null;

    beforeEach(function () {
        viewModel = new ViewModel();
    });

    afterEach(function () {
        viewModel = null;
    });

    it('findTask', function () {
        expect(viewModel.task.id()).toBe(null);
        var task = new Task(1, 1, 'Happy task', 'Create something new', 1);
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
                'group_id': 1,
                'priority': 1,
            });
            return d.promise();
        });

        var group = new Group(1, 1, 'Happy group', 1);
        viewModel.selectedGroup = group;
        var beforeCount = group.tasks().length;
        viewModel.task.subject('Happy task');
        viewModel.task.body('Create something new');
        viewModel.task.group_id(1);
        viewModel.task.priority(1);
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
                'priority': 1,
                'group': {
                    'id': 1,
                    'subject': 'Happy group'
                }
            });
            return d.promise();
        });

        var task = new Task(1, 1, 'Happy task', 'Create something new', 1);
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

        var group = new Group(1, 1, 'Happy group', 1);
        group.tasks().push(new Task(1, 1, 'Happy task', 'Create something new', 1));
        group.tasks().push(new Task(2, 1, 'Delete task', 'This task is wrong', 2));
        expect(group.tasks().length).toBe(2);
        viewModel.selectedGroup = group;
        viewModel.selectedTask = group.tasks()[1];
        viewModel.deleteTask();
        expect(group.tasks().length).toBe(1);
    });
});
