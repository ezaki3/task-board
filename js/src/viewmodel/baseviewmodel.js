var User = require('../model/user.js');
var BaseViewModel = function () {
    var self = this;

    self.alertSuccessMessage = ko.observable();
    self.alertErrorMessage = ko.observable();

    self.invalidMessages = ko.observable();

    self.backUrl = location.pathname;

    var dispatcher = new WebSocketRails(window.location.host + '/websocket');
    self.channel = dispatcher.subscribe('update_notification');

    self.user = new User(null, null, null);
    self.users = ko.observableArray();

    self.user.login()
        .done(function (response) {
            self.user.id(response.id);
            self.user.nickname(response.nickname);
            self.user.avatar_url(response.avatar_url);
        })
        .fail(function (response) {
            console.log(response);
        });

    self.closeAlertSuccess = function () {
        self.alertSuccessMessage(null);
    }.bind(self);

    self.closeErrorSuccess = function () {
        self.alertErrorMessage(null);
    }.bind(self);

    self.loadingFlg = ko.observable(false);
};

module.exports = BaseViewModel;
