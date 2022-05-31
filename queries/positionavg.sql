SELECT p.position,ROUND(AVG(ps.kills),1)AS AVG_KILL,ROUND(AVG(ps.deaths),1) AS AVG_DEATH,ROUND(AVG(ps.assists),1) AS AVG_ASSIST, ROUND(AVG(ps.cs)) AS AVG_CS, ROUND(AVG(ps.gold)) AS AVG_GOLD, ROUND(AVG(ps.playerdmg)) AS AVG_DMG
FROM players AS p
INNER JOIN playerstat AS ps
ON p.playerID = ps.playerID
GROUP BY p.position
ORDER BY AVG_CS DESC;