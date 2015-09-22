var BaseViewModel = function () {
    this.alertSuccessMessage = ko.observable();
    this.alertErrorMessage = ko.observable();

    this.invalidMessages = ko.observable();

    this.closeAlertSuccess = function () {
        this.alertSuccessMessage(null);
    }.bind(this);

    this.closeErrorSuccess = function () {
        this.alertErrorMessage(null);
    }.bind(this);
};

module.exports = BaseViewModel;
