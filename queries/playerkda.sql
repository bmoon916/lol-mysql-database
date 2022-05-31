SELECT p.nickname, FORMAT((SUM(ps.kills)+SUM(ps.assists))/SUM(ps.deaths),2) AS KDA
FROM playerstat AS ps
LEFT JOIN players AS p
ON ps.playerID = p.playerID
GROUP BY p.nickname
ORDER BY KDA DESC;
