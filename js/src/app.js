'use strict';
var crossroads = require('crossroads');

crossroads.addRoute('/', function() {
    var ViewModel = require('./viewmodel/boards/index.js');
    var viewModel = new ViewModel();
    viewModel.listBoard();
    ko.applyBindings(viewModel);
});

crossroads.addRoute('/boards/{id}', function(id) {
    var ViewModel = require('./viewmodel/boards/show.js');
    var viewModel = new ViewModel();
    viewModel.listGroup(id);
    ko.applyBindings(viewModel);
});

crossroads.bypassed.add(function(request){
    console.log(request);
});

crossroads.parse(window.location.pathname + window.location.search + window.location.hash);
