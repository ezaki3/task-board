'use strict';
var ViewModel = require('../viewmodel/boards/show.js');
var viewModel = new ViewModel();
viewModel.listGroup();
ko.applyBindings(viewModel);
