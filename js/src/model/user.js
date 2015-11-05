var User = function (id, nickname, avatar_url) {
    this.id = ko.observable(id);
    this.nickname = ko.observable(nickname);
    this.avatar_url = ko.observable(avatar_url);

    this.apiUrl = '/api/v1/users/current';
};

User.prototype.login = function () {
    var d = $.Deferred();
    $.ajax({url: this.apiUrl})
        .done(function (response) {
            d.resolve(response);
        })
        .fail(function (response) {
            d.reject(response);
        });
    return d.promise();
};

module.exports = User;
