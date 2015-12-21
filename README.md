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

### Planned futures

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

* JSON Web-APIs based on **Ruby on Rails**


## License

MIT
