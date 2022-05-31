#Can't divide by so the IF is to replace the zero with one.
SELECT p.nickname, FORMAT((ps.kills+ps.assists)/IF(ps.deaths=0,1,ps.deaths),2) AS KDA,
ps.kills AS Kills, ps.deaths AS Deaths, ps.assists AS Assists, ps.cs AS CS, (SELECT Teamabbr FROM teams WHERE teamID = p.teamID) AS team,
CASE WHEN p.teamID = m.bluesideID AND bluesideWin = 'Y' THEN 'Y'
	WHEN p.teamID = m.redsideID AND bluesideWin = 'N' THEN 'Y'
    WHEN p.teamID = m.bluesideID AND bluesideWin = 'N' THEN 'N'
    WHEN p.teamID = m.redsideID AND bluesideWin = 'Y' THEN 'N' END AS Victory
    
FROM playerstat AS ps
LEFT JOIN players AS p
ON ps.playerID = p.playerID
LEFT JOIN matches AS m
ON ps.matchID = m.matchID
#change the matchID to get different match results.
WHERE m.matchID = 4
GROUP BY p.nickname
#top team on query results is blue side
ORDER BY IF(bluesideID > redsideID,'TeamID DESC','TeamID');
