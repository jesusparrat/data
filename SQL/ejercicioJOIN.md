WITH table_host AS (
    SELECT 
        host_team AS team_id,
        CASE 
            WHEN host_goals > guest_goals THEN 3 
            WHEN host_goals < guest_goals THEN 0 
            WHEN host_goals = guest_goals THEN 1
        END AS num_points
    FROM matches
),
table_guest AS (
    SELECT 
        guest_team AS team_id,
        CASE 
            WHEN guest_goals > host_goals THEN 3 
            WHEN guest_goals < host_goals THEN 0 
            WHEN guest_goals = host_goals THEN 1
        END AS num_points
    FROM matches
),
total_points AS (
    SELECT 
        team_id,
        SUM(num_points) AS total_points
    FROM (
        SELECT * FROM table_host
        UNION ALL
        SELECT * FROM table_guest
    )
    GROUP BY team_id
)

SELECT 
    T.team_id,
    T.team_name,
    COALESCE(TP.total_points, 0) AS total_points
FROM teams T
LEFT JOIN total_points TP ON T.team_id = TP.team_id
order by total_points desc;
