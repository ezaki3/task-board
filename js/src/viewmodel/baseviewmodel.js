var User = require('../model/user.js');
var BaseViewModel = function () {
    var self = this;

    self.alertSuccessMessage = ko.observable();
    self.alertErrorMessage = ko.observable();

    self.invalidMessages = ko.observable();

    self.backUrl = location.pathname;

    self.user = new User(null, null, null);
    self.user.login()
        .done(function (response) {
            self.user.id(response.id);
            self.user.nickname(response.nickname);
            self.user.avatar_url(response.avatar_url);
        })
        .fail(function (response) {
            console.log(response);
        });

    this.closeAlertSuccess = function () {
        self.alertSuccessMessage(null);
    }.bind(self);

    this.closeErrorSuccess = function () {
        self.alertErrorMessage(null);
    }.bind(self);
};

module.exports = BaseViewModel;
