# ezaki3/task-board

[![build status](https://circleci.com/gh/ezaki3/task-board.svg?style=shield&circle-token=b958b224e58d54299823290b6bc4dea139dde2aa)](https://circleci.com/gh/ezaki3/task-board)
[![Code Climate Badge](https://codeclimate.com/github/ezaki3/task-board/badges/gpa.svg)](https://codeclimate.com/github/ezaki3/task-board)
[![Test Coverage Badge](https://codeclimate.com/github/ezaki3/task-board/badges/coverage.svg)](https://codeclimate.com/github/ezaki3/task-board/coverage)

かんばん形式のタスク管理ツール。
Task management tool like a kanban.

[Demo site](http://task-board.dqn.ch) you can log in with your GitHub account!


## Features

* Drag-and-Dropable stickies (We call them Boards, Groups and Tasks)
* Assigning members to stickies
* Login authentication with GitHub OAuth
* Realtime interactive communications by WebScocket
* Push notifications to Slack

### Planned features

* Adaptable authentication with other OAuth providers
* Adaptable push notifications to other web chat services
* Taggable stickies
* Member invitation


## Application architectures


### Front-end

* Main Javascript library: **KnockoutJS**
* CSS Framework: **Bootstrap**
* Task Runner: **Grunt**
* Unit Test: **Karma/Jasmine**
* Build Tool: **browserify/uglify**


### Server-side

* JSON Web-APIs based on **Ruby on Rails4**
  - **OmniAuth** for OAuth
  - **websocket-rails** gem for using WebSocket technology
  - **slack-api** gem for pushing to Slack WebChat service
  - Depends on some RDBMS supported by **ActiveRecord** (We're using PostgreSQL and SQLite on developement)
  - Unit specs and request specs with **RSpec3**


## Deploy to Heroku

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

_Required GitHub account_

1. Push the button above and finish steps.
2. Register application above to GitHub from [Developer applications page](https://github.com/settings/developers).
  * **Authorization callback URL** is a string like https://*app-name-above*.herokuapp.com/auth/github/callback
3. Configure environment variables on Heroku Dashboard.
  * *See* `/app.json` of this repo about known environment variables


## License

[MIT](http://opensource.org/licenses/mit-license.php)
