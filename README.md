## BF4 Server Stats Webpage Overview
![Sample](https://raw.githubusercontent.com/TheTomik1/BF4-Server-Stats/master/.github/overview.png)
###### *(Example Images) Not affiliated with 'Banzore'*

### About this fork

This fork is a modified version of the original BF4 Server Stats Webpage. It has been upgraded to the latest PHP (8.5.12) and Dockerized. This fork also significantly enhances the security of the application.

Huge credit goes to the original fork at: [BF4-Server-Stats](https://github.com/tyger07/BF4-Server-Stats) and tyger07 for their work.


### Features

* Easy setup.
* Individual server or combined server stats.
* Country stats.
* Map stats.
* Player stats.
* Weapon stats.
* Dog tag stats.
* Game server stats.
* Live scoreboard.
* Top players list / leaderboard.
* Player name search.
* Top players of the Week.
* Suspicious players search.
* ~~Server chat log.~~ (Removed in this fork)
* Stats signature images.
* Gametracker-style server banners.
* Battlelog theme.


### Requirements

This web page code requires the use of a stats database which is created by XpKiller's Procon "Chat, GUID, Stats and Mapstats Logger" Plugin.
If you need help setting up and using XpKiller's Stats Logger plugin, you must seek assistance in XpKiller's plugin thread:
https://myrcon.net/topic/162-chat-guid-stats-and-mapstats-logger-1003/

For best compatibility with this web stats page, use the following settings in XpKiller's Procon Stats Logging plugin:
* "Enable Statslogging?" : Yes
* "Enable Weaponstats?" : Yes
* "Enable Livescoreboard in DB?" : Yes
* "tableSuffix" : None
* "MapStats ON?" : Yes
* "Session ON?" : Yes
* "Save Sessiondata to DB?" : Yes
* "Log playerdata only (no playerstats)?" : No

This webpage also requires that you have access to an Apache web server with reverse proxy setup and Docker (with Docker Compose) installed on your server.

### Installation and config

#### Installation

1) Clone this repository to your server:
https://github.com/TheTomik1/BF4-Server-Stats

2) Make sure your Apache has reverse proxy enabled:
```sudo a2enmod proxy_http sudo systemctl restart apache2```

3) Create a site in sites available directory. Example:
https://github.com/TheTomik1/BF4-Server-Stats/blob/master/sites-available-example.conf

4) Enable the site. Run the following commands:
```sudo a2ensite sites-available-example.conf sudo systemctl restart apache2```

5) Follow the configuration instructions below. Do not skip this step!

5) Run the following command to install the dependencies and build the whole app:
```sudo docker-compose up -d --build```


#### Configuration

1) Create an .env file from the example:
```cp .env.example .env```

2) Fill in the .env file with database credentials and other settings.


### Additional Information

A .sql file is included in the ./test-database/ folder for users to set up a dummy test database to test this web page when they otherwise have not yet set up a server or have not yet got XpKiller's Stats Logger plugin and database working.

### Help, Support, and Feedback

To get help, support, or feedback, you can submit a "New Issue" using GitHub:
https://github.com/TheTomik1/BF4-Server-Stats/issues

Optionally, you can also DM me on Discord: thetomik

Will be very happy to help you!

### Changelog

Refer to commmit history on GitHub:
https://github.com/TheTomik1/BF4-Server-Stats/commits/main/

Enjoy!
