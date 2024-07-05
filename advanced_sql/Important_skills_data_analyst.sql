WITH remote_jobs_skills AS (
    SELECT
        skill_id,
        COUNT(*) AS skill_count
    FROM 
        skills_job_dim AS skill_to_job
    INNER JOIN job_postings_fact AS job_postings ON job_postings.job_id = skill_to_job.job_id
    WHERE 
        job_work_from_home = TRUE AND job_title_short = 'Data Analyst'
    GROUP BY
        skill_id
)

SELECT 
    skill.skill_id,
    skills AS skill_name, 
    skill_count
FROM 
    remote_jobs_skills
INNER JOIN skills_dim AS skill ON skill.skill_id = remote_jobs_skills.skill_id
ORDER BY
    skill_count DESC
LIMIT 5