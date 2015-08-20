'use strict';
var ViewModel = require('./viewmodel.js');
var viewModel = new ViewModel();
//viewModel.listTask();
viewModel.listGroup();
ko.applyBindings(viewModel);
