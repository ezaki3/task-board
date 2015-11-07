var User = require('../../js/src/model/user.js');

describe('board', function () {
    var user = null;

    beforeEach(function () {
        user = new User();
    });

    afterEach(function () {
        user = null;
    });

    it('loginSuccess', function () {
        spyOn($, 'ajax').and.callFake(function() {
            var d = $.Deferred();
            d.resolve({
                'id': 1,
                'nickname': 'Happy user',
                'avatar_url': 'https://avater_url.com/'
            });
            return d.promise();
        });

        user.login()
            .done(function (response) {
                user.id(response.id);
                user.nickname(response.nickname);
                user.avatar_url(response.avatar_url);
            });

        expect(user.id()).toBe(1);
    });
});
