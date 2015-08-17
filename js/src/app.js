'use strict';
var ViewModel = require('./viewmodel.js');
var viewModel = new ViewModel();
viewModel.listTask();
ko.applyBindings(viewModel);
