CREATE TABLE `matches` (
  `matchDate` date NOT NULL,
  `matchlength` time NOT NULL,
  `matchID` int unsigned NOT NULL AUTO_INCREMENT,
  `bluesideWin` tinyint(1) NOT NULL,
  `bluesideID` int unsigned NOT NULL,
  `redsideID` int unsigned NOT NULL,
  PRIMARY KEY (`matchID`),
  KEY `fk_homeside` (`bluesideID`),
  KEY `fk_awayside` (`redsideID`),
  CONSTRAINT `fk_awayside` FOREIGN KEY (`redsideID`) REFERENCES `teams` (`teamID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_homeside` FOREIGN KEY (`bluesideID`) REFERENCES `teams` (`teamID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `players` (
  `playerID` int unsigned NOT NULL AUTO_INCREMENT,
  `nickname` varchar(15) NOT NULL,
  `PlayerFN` varchar(25) NOT NULL,
  `PlayerLN` varchar(25) NOT NULL,
  `position` varchar(9) NOT NULL,
  `residency` varchar(20) NOT NULL,
  `teamID` int unsigned NOT NULL,
  PRIMARY KEY (`playerID`),
  KEY `fk_teamID` (`teamID`),
  CONSTRAINT `fk_teamID` FOREIGN KEY (`teamID`) REFERENCES `teams` (`teamID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `playerstat` (
  `statID` int unsigned NOT NULL AUTO_INCREMENT,
  `kills` int unsigned NOT NULL,
  `deaths` int unsigned NOT NULL,
  `assists` int unsigned NOT NULL,
  `cs` int unsigned NOT NULL,
  `playerdmg` int unsigned NOT NULL,
  `gold` int unsigned NOT NULL,
  `playerID` int unsigned NOT NULL,
  `matchID` int unsigned NOT NULL,
  `teamID` int unsigned NOT NULL,
  PRIMARY KEY (`statID`),
  KEY `fk_playerID` (`playerID`),
  KEY `fk_matchID` (`matchID`),
  KEY `fk_playersID` (`teamID`),
  CONSTRAINT `fk_matchID` FOREIGN KEY (`matchID`) REFERENCES `matches` (`matchID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_playerID` FOREIGN KEY (`playerID`) REFERENCES `players` (`playerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_playersID` FOREIGN KEY (`teamID`) REFERENCES `teams` (`teamID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `teams` (
  `teamID` int unsigned NOT NULL AUTO_INCREMENT,
  `TeamName` varchar(100) NOT NULL,
  `TeamAbbr` varchar(5) NOT NULL,
  `league` varchar(20) NOT NULL,
  PRIMARY KEY (`teamID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


