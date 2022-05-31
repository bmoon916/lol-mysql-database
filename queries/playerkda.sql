SELECT p.nickname, FORMAT(AVG(ps.kills+ps.assists/ps.deaths),2) AS KDA
FROM playerstat AS ps
LEFT JOIN players AS p
ON ps.playerID = p.playerID
GROUP BY p.nickname
ORDER BY KDA DESC;
