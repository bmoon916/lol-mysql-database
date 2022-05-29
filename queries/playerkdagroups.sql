SELECT p.nickname, FORMAT((SUM(ps.kills)+SUM(ps.assists))/SUM(ps.deaths),2) AS KDA
FROM playerstat AS ps
LEFT JOIN players AS p
ON ps.playerID = p.playerID
WHERE
	matchID IN (
		SELECT
			matchID
        FROM
			matches
        WHERE 
			matchdate < '2022-05-20'
            )
GROUP BY p.nickname
ORDER BY KDA DESC
LIMIT 5;