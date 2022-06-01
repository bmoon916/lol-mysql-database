#team stats
SELECT t.teamabbr AS team, 
SUM(CASE WHEN t.teamid = m.bluesideID AND m.bluesidewin = 'Y' THEN 1
WHEN t.teamid = m.redsideID AND m.bluesidewin = 'N' THEN 1 ELSE 0 END) AS wins,
SUM(CASE WHEN t.teamid = m.bluesideID AND m.bluesidewin = 'N' THEN 1
WHEN t.teamid = m.redsideID AND m.bluesidewin = 'Y' THEN 1 ELSE 0 END) AS losses,
CONCAT(ROUND(SUM(CASE WHEN t.teamid = m.bluesideID AND m.bluesidewin = 'Y' THEN 1
WHEN t.teamid = m.redsideID AND m.bluesidewin = 'N' THEN 1 ELSE 0 END)/COUNT(m.bluesideID)*100),'%') AS winrate
FROM matches m
INNER JOIN teams t
ON m.bluesideID = t.teamid OR m.redsideID = t.teamid
#WHERE m.matchdate <= 
GROUP BY t.teamid
ORDER BY wins DESC;
