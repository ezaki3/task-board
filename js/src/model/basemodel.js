var BaseModel = function () {
    this.apiUrl = {
        'collection': null,
        'member': null
    };
};

BaseModel.prototype.search = function (urlType) {
    var d = $.Deferred();
    $.ajax({url: this.apiUrl[urlType || 'member']})
        .done(function (response) {
            d.resolve(response);
        })
        .fail(function (response) {
            d.reject(response);
        });
    return d.promise();
};

BaseModel.prototype.create = function (data, urlType) {
    var d = $.Deferred();
    $.ajax({
        url: this.apiUrl[urlType || 'member'],
        method: 'POST',
        contentType: 'application/json',
        data: data})
        .done(function (response) {
            d.resolve(response);
        })
        .fail(function (response) {
            d.reject(response);
        });
    return d.promise();
};

BaseModel.prototype.find = function (id) {
    var d = $.Deferred();
    $.ajax({url: this.apiUrl.member + '/' + id})
        .done(function (response) {
            d.resolve(response);
        })
        .fail(function (response) {
            d.reject(response);
        });
    return d.promise();
};

BaseModel.prototype.edit = function (id, data) {
    var d = $.Deferred();
    $.ajax({
        url: this.apiUrl.member + '/' + id,
        method: 'PATCH',
        contentType: 'application/json',
        data: data})
        .done(function (response) {
            d.resolve(response);
        })
        .fail(function (response) {
            d.reject(response);
        });
    return d.promise();
};

BaseModel.prototype.delete = function (id) {
    var d = $.Deferred();
    $.ajax({
        url: this.apiUrl.member + '/' + id,
        method: 'DELETE'})
        .done(function (response) {
            d.resolve(response);
        })
        .fail(function (response) {
            d.reject(response);
        });
    return d.promise();
};

module.exports = BaseModel;
