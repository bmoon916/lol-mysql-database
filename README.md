# lol-mysql-database
LOL MSI 2022 MySQL database 

**What is LOL?**
League of legends(LOL) is a video game, which pin two groups of five people with their own roles(Top,Jungle,Mid,Bot,Support) against each other in an arena. The map of the game has three lanes that go through the map with the space between the lanes being called jungle, and is divided into two territories. The two territories are called blue side and red side, in sports terms, Blue side would be home and Red side would be away. The sides are also color coded in blue and red in the game to make a distinction between the two sides. The teams need to fight to reach each others nexus because the game doesn't end until one team destroys the others Nexus. To have a better understanding of the game visit: https://www.leagueoflegends.com/en-us/how-to-play/ LOL as an esport event is huge with this year's event reaching 2 million concurrent viewers. 

![summonersrift](https://github.com/gmod916/lol-mysql-database/blob/main/summonersrift.jpg)



**What is MSI?**
The Mid-Season Invitational is an international annual League of Legends tournament hosted by the creator of LOL since 2015. The tournament follows a three stage tournament with group, rumble, and knockout stages.

**Why create this project?**
I wanted to create something with the new knowledge I'm gaining from studying. I thought I would make a database about LOL since I enjoy watching esports. While this is a simple project, I wish to keep on learning to more complex projects in the future. I wish to dive into other skill sets to become a data engineer. 

**What does the database comprise of?**
The database has all the matches played, players in each team, and the stats of each player for every match. In mysql, they are represented as tables called teams, players, playerstat, and matches. maniplating this data, I can look at the top performers, make comparsions between each players, and look at weaknesses of each player using analytics. I can also just pull general information as the team's winrate, player names, and residency of each player. 

**How to use the database?**
Use the create.sql file to create all the tables on a database and use the insert.csv files to insert all the data. You can also use prewrote queries in the query file and modify them to get results you want. Use the cheatsheet below to make the changes you want.  

![cheatsheet](https://github.com/gmod916/lol-mysql-database/blob/main/cheatsheet.png)

Note: teamID, bluesideID, and redsideID use the same IDs.

KDA stands for Kill Death Assists and is also a formula of Kill+Assist/Death. If there is 0 death just replace it with a 1.
