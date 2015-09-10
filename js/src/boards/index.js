'use strict';
var ViewModel = require('../viewmodel/boards/index.js');
var viewModel = new ViewModel();
viewModel.listBoard();
ko.applyBindings(viewModel);
