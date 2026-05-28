-- Funnel Query 4: Average duration leads spend at each stage
WITH stage_timestamps AS (
  SELECT
    f.leads_id,
    f.stage_id,
    st.stage,
    f.TimeStamp AS entered_at,
    LEAD(f.TimeStamp) OVER (
      PARTITION BY f.leads_id ORDER BY f.stage_id
    ) AS next_stage_entered_at
  FROM `nextproject-001.DES_SaaS.funnel_new` f
  JOIN `nextproject-001.DES_SaaS.stage` st ON f.stage_id = st.stage_id
  WHERE f.TimeStamp < '2023-01-01'
)
SELECT
  stage_id,
  stage,
  COUNT(*)                                                               AS leads_observed,
  ROUND(AVG(TIMESTAMP_DIFF(next_stage_entered_at, entered_at, DAY)), 1) AS avg_days_in_stage,
  MIN(TIMESTAMP_DIFF(next_stage_entered_at, entered_at, DAY))           AS min_days,
  MAX(TIMESTAMP_DIFF(next_stage_entered_at, entered_at, DAY))           AS max_days,
  APPROX_QUANTILES(
    TIMESTAMP_DIFF(next_stage_entered_at, entered_at, DAY), 100
  )[OFFSET(50)]                                                          AS median_days
FROM stage_timestamps
WHERE next_stage_entered_at IS NOT NULL
GROUP BY stage_id, stage
ORDER BY stage_id


