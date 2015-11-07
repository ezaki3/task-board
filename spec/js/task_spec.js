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
        spyOn($, 'ajax').and.callFake(function() {
            var d = $.Deferred();
            d.resolve({
                'id': 1,
                'subject': 'Edit task',
                'body': 'Create something new',
                'priority': 1,
                'group': {
                    'id': 1,
                    'subject': 'Happy group',
                    'priority': 1
                }
            });
            return d.promise();
        });

        expect(viewModel.task.id()).toBe(null);
        var task = new Task(1, 1, 'Happy task', 'Create something new', 1);
        viewModel.findTask({}, task);
        expect(viewModel.task.id()).toBe(task.id());
    });

    it('validationSuccess', function () {
        spyOn($, 'ajax').and.callFake(function() {
            var d = $.Deferred();
            d.resolve({
                'id': null,
                'subject': 'Happy task',
                'body': 'Create something new',
                'priority': null,
                'group': {
                    'id': 1,
                    'subject': 'Happy group',
                    'priority': 1
                }
            });
            return d.promise();
        });

        viewModel.task.group_id(1);
        viewModel.task.subject('Happy task');
        expect(viewModel.baseViewModel.invalidMessages().task.subject.length).toBe(0);
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

        viewModel.task.group_id(1);
        viewModel.task.subject('');
        expect(viewModel.baseViewModel.invalidMessages().task.subject.length).toBe(1);
    });

    it('createTask', function () {
        spyOn($, 'ajax').and.callFake(function() {
            var d = $.Deferred();
            d.resolve({
                'id': 1,
                'subject': 'Happy task',
                'body': 'Create something new',
                'priority': 1,
                'group': {
                    'id': 1,
                    'subject': 'Happy group',
                    'priority': 1
                }
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
                    'subject': 'Happy group',
                    'priority': 1
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

    it('moveTask', function () {
        spyOn($, 'ajax').and.callFake(function() {
            var d = $.Deferred();
            d.resolve({
                'id': 1,
                'subject': 'Happy task',
                'body': 'Create something new',
                'priority': 1,
                'group': {
                    'id': 1,
                    'subject': 'Happy group',
                    'priority': 1
                }
            });
            return d.promise();
        });

        var task = new Task(1, 1, 'Happy task', 'Create something new', 2);
        expect(task.priority()).toBe(2);
        viewModel.moveTask({
            item: task,
            targetIndex: 0,
            targetParent: {
                group_id: 1
            }
        });
        expect(viewModel.selectedTask.priority()).toBe(1);
    });
});
