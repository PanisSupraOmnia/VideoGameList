# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

## v2019.4.3
### Added
- Add a button to the settings that allows a user to reset their game library. ([#309])

## v2019.3.31
### Added
- Add Steam account login and the ability to import games from a user's Steam library. ([#297])

## v2019.3.30
### Changed
- Debounce search results so there are fewer requests sent to the backend. ([#295])

### Fixed
- Fix adding a game to your own library and add a feature test to make sure it can't break again. ([#291], [#292])

## v2019.3.29
### Added
- Add a Rake task for deploying the site in production.
- Add a proper description of the site to the About page.

## v2019.3.28
### Added
- First proper deployment to [the live website!](https://vglist.co) Involved setting up a server on DigitalOcean, a database, configuring SSL certs, setting up email, and getting the Rails app to behave properly in production.

### Changed
- Allow the games import script to import games incrementally. ([#285])

## v2019.3.24
### Added
- Add platforms to game purchases. ([#271])

### Fixed
- Fix a bug that prevented more than one person from favoriting the same game. ([#272])

## v2019.3.23
### Changed
- Improve test coverage for cases where the tests didn't check for associations (e.g. a game with a platform). ([#268])
- Rename the project to VideoGameList aka VGList. ([#269])

## v2019.3.22
### Changed
- Improve the design of the settings page. ([#258])
- Enable trigram search to make the search more flexible. ([#265])
- Split `seeds.rb` into multiple files and Rake tasks. ([#267])

## v2019.3.17
### Added
- Add Steam Application IDs to games. ([#239])
- Add a `rake import:full` task for running all the import tasks sequentially. ([#239])
- Add Wikidata IDs to various forms. ([#241])

### Changed
- Allow the search bar to use the arrow keys for navigating between results. ([#238])

## v2019.3.16
### Added
- Add hours played to game purchases. ([#227])

## v2019.3.13
### Added
- Add favoriting games. ([#226])

## v2019.3.11
### Added
- Add start and completion dates to game purchases. ([#223])

## v2019.3.10
### Added
- Add global search to the navbar. Can be used to search for games, companies, genres, engines, series', and platforms. ([#210])
- Add proper game library management to the user page, including adding, editing, and removing games. ([#213])
- Add completion statuses to game purchases. Statuses include Unplayed, In Progress, Dropped, Completed, 100% Completed, and N/A. ([#219])

## v2019.3.9
### Added
- Add request and policy tests for game purchases. ([#207])

## v2019.3.7
### Added
- Add a Rake task to import game covers from PCGamingWiki. ([#206])

## v2019.3.5
### Added
- Add a Rake task to import games from Wikidata. ([#200])
- Add PCGamingWiki IDs to games and import them with the Wikidata Importer. ([#202])

## v2019.3.4
### Added
- Add Rake tasks to import companies, engines, genres, platforms, and series' from Wikidata. ([#198])
- Add Wikidata IDs for companies, engines, games, genres, platforms, and series. ([#199])

## v2019.2.28
### Added
- Add scores to game purchases. ([#186])

## v2019.2.27
### Added
- Add Game Series. ([#182])

## v2019.2.24
### Added
- Add proper error handling to the game form. ([#172])
- Add cancel buttons to forms. ([#173])

## v2019.2.23
### Added
- Add the ability to remove covers from games. ([#168])
- Add the ability to remove avatars from users. ([#169])

## v2019.2.22
### Changed
- Switch CI from Travis to GitLab CI. ([#163])

## v2019.2.18
### Added
- Create a generic multi-select Vue component and replace the existing selector components with it. ([#157])
- Add the `friendly_id` gem and have user URLs use the actual username (e.g. a user named 'spiderman' will have the URL `/users/spiderman`). ([#158])

## v2019.2.17
### Changed
- Remove releases and simplify the site so Games are used for everything. ([#153])

## v2019.2.16
### Added
- Add game cards with a much better design for the `games#index`. ([#148])
- Display developers and publishers from releases on game pages. ([#148])
- Add avatars and covers to `seeds.rb`. ([#150])

## v2019.2.15
### Added
- Add Covers for Games. ([#145])

### Changed
- Change the `Dockerfile` base image Debian to Alpine Linux. ([#144])

## v2019.2.14
### Added
- Add a `Dockerfile` for running the application in production mode. This is a super important step toward actually deploying the thing to production. ([#138])

## v2019.2.13
### Added
- Add Game Engines. ([#135])

## v2019.1.27
### Added
- Improved design and added dropdowns. ([#100])
- Add ActiveStorage, user avatars, and user avatar uploading. ([#104])

### Fixed
- Ensure that users can't have more than one copy of the same release in their library. ([#101])
- Ensure that releases can't have more than one of the same genre. ([#102])

## v2019.1.26
### Added
- Add action for adding a release to your library. ([#93])
- Add action for removing a release from your library. ([#98])
- Add some tests for functionality that was previously untested. ([#99])

## v2019.1.25
### Added
- Add Settings pages and a form for updating your user bio. ([#90])

## v2019.1.24
### Added
- Add create/update/destroy for releases, meaning you can now modify everything about releases from the web interface. ([#82])
- Add simple search for games, platforms, and developers/publishers. Currently only used in the release form. ([#82])
- Add `update_role` method that can be used to promote users to moderator or admin status. Also able to demote. Only admins can do this. ([#85])

## v2019.1.22
### Added
- Upgrade to Webpacker 4. ([#77])
- Add create/update/destroy for platforms. Only moderators and admins can modify platforms. ([#81])

## v2019.1.20
### Added
- Add feature specs. ([#72])

## v2019.1.18
### Added
- Add `vue-select` component. ([#52])
- Add `pg_search` for searching genres in the games form. ([#60])
- Add pundit policies for genres. ([#61])

## v2019.1.14
### Changed
- Move from Bootstrap to Bulma for our CSS framework. ([#48])

## v2019.1.13
### Added
- Add moderators and admins. ([#33])
- Add request specs. ([#47])

## v2019.1.6
### Added
- Add developers and publishers. ([#27])

## v2019.1.4
### Added
- Add Vue.js. ([#26])

### Changed
- Move to Webpack. ([#26])

## v2019.1.2
### Added
- Add genres to games. ([#24])

## v2019.1.1
### Added
- Add shoulda-matchers gem for testing. ([#21])
- Add Pundit gem for authorization. ([#22])

## v2018.12.31
### Changed
- Move to Rspec for testing. ([#19])

## v2018.12.30
### Added
- Add create/update/delete for Games. ([#11])

[#11]: https://github.com/connorshea/VideoGameList/pull/11
[#19]: https://github.com/connorshea/VideoGameList/pull/19
[#21]: https://github.com/connorshea/VideoGameList/pull/21
[#22]: https://github.com/connorshea/VideoGameList/pull/22
[#24]: https://github.com/connorshea/VideoGameList/pull/24
[#26]: https://github.com/connorshea/VideoGameList/pull/26
[#27]: https://github.com/connorshea/VideoGameList/pull/27
[#33]: https://github.com/connorshea/VideoGameList/pull/33
[#47]: https://github.com/connorshea/VideoGameList/pull/47
[#48]: https://github.com/connorshea/VideoGameList/pull/48
[#52]: https://github.com/connorshea/VideoGameList/pull/52
[#60]: https://github.com/connorshea/VideoGameList/pull/60
[#61]: https://github.com/connorshea/VideoGameList/pull/61
[#72]: https://github.com/connorshea/VideoGameList/pull/72
[#77]: https://github.com/connorshea/VideoGameList/pull/77
[#81]: https://github.com/connorshea/VideoGameList/pull/81
[#82]: https://github.com/connorshea/VideoGameList/pull/82
[#85]: https://github.com/connorshea/VideoGameList/pull/85
[#90]: https://github.com/connorshea/VideoGameList/pull/90
[#93]: https://github.com/connorshea/VideoGameList/pull/93
[#98]: https://github.com/connorshea/VideoGameList/pull/98
[#99]: https://github.com/connorshea/VideoGameList/pull/99
[#100]: https://github.com/connorshea/VideoGameList/pull/100
[#101]: https://github.com/connorshea/VideoGameList/pull/101
[#102]: https://github.com/connorshea/VideoGameList/pull/102
[#104]: https://github.com/connorshea/VideoGameList/pull/104
[#135]: https://github.com/connorshea/VideoGameList/pull/135
[#138]: https://github.com/connorshea/VideoGameList/pull/138
[#144]: https://github.com/connorshea/VideoGameList/pull/144
[#145]: https://github.com/connorshea/VideoGameList/pull/145
[#148]: https://github.com/connorshea/VideoGameList/pull/148
[#150]: https://github.com/connorshea/VideoGameList/pull/150
[#153]: https://github.com/connorshea/VideoGameList/pull/153
[#157]: https://github.com/connorshea/VideoGameList/pull/157
[#158]: https://github.com/connorshea/VideoGameList/pull/158
[#163]: https://github.com/connorshea/VideoGameList/pull/163
[#168]: https://github.com/connorshea/VideoGameList/pull/168
[#169]: https://github.com/connorshea/VideoGameList/pull/169
[#172]: https://github.com/connorshea/VideoGameList/pull/172
[#173]: https://github.com/connorshea/VideoGameList/pull/173
[#182]: https://github.com/connorshea/VideoGameList/pull/182
[#186]: https://github.com/connorshea/VideoGameList/pull/186
[#198]: https://github.com/connorshea/VideoGameList/pull/198
[#199]: https://github.com/connorshea/VideoGameList/pull/199
[#200]: https://github.com/connorshea/VideoGameList/pull/200
[#202]: https://github.com/connorshea/VideoGameList/pull/202
[#206]: https://github.com/connorshea/VideoGameList/pull/206
[#207]: https://github.com/connorshea/VideoGameList/pull/207
[#210]: https://github.com/connorshea/VideoGameList/pull/210
[#213]: https://github.com/connorshea/VideoGameList/pull/213
[#219]: https://github.com/connorshea/VideoGameList/pull/219
[#223]: https://github.com/connorshea/VideoGameList/pull/223
[#226]: https://github.com/connorshea/VideoGameList/pull/226
[#227]: https://github.com/connorshea/VideoGameList/pull/227
[#238]: https://github.com/connorshea/VideoGameList/pull/238
[#239]: https://github.com/connorshea/VideoGameList/pull/239
[#241]: https://github.com/connorshea/VideoGameList/pull/241
[#258]: https://github.com/connorshea/VideoGameList/pull/258
[#265]: https://github.com/connorshea/VideoGameList/pull/265
[#267]: https://github.com/connorshea/VideoGameList/pull/267
[#268]: https://github.com/connorshea/VideoGameList/pull/268
[#269]: https://github.com/connorshea/VideoGameList/pull/269
[#271]: https://github.com/connorshea/VideoGameList/pull/271
[#272]: https://github.com/connorshea/VideoGameList/pull/272
[#285]: https://github.com/connorshea/VideoGameList/pull/285
[#291]: https://github.com/connorshea/VideoGameList/pull/291
[#292]: https://github.com/connorshea/VideoGameList/pull/292
[#295]: https://github.com/connorshea/VideoGameList/pull/295
[#297]: https://github.com/connorshea/VideoGameList/pull/297
[#309]: https://github.com/connorshea/VideoGameList/pull/309
