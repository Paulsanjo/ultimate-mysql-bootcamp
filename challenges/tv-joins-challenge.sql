-- challenge 6 - reviewer stats
SELECT R1.first_name                                   as first_name,
       R1.last_name                                    as last_name,
       COUNT(R2.rating)                                as num_rated,
       IFNULL(MIN(R2.rating),0)                        as min_rating,
       IFNULL(MAX(R2.rating),0)                        as max_rating,
       ROUND(IFNULL(AVG(R2.rating),0), 2)              as avg_rating,
       IF(COUNT(R2.rating) >= 1, 'ACTIVE', 'INACTIVE') as status
  FROM reviewers AS R1 
    LEFT JOIN reviews AS R2 ON R2.reviewer_id = R1.reviewer_id
    GROUP BY first_name, last_name
    ORDER BY status;
    
-- challenge 7
SELECT S1.title, R1.rating, CONCAT(R2.first_name, ' ', R2.last_name) AS reviewer
  FROM reviews AS R1
    LEFT JOIN series    AS S1 ON S1.series_id   = R1.series_id
    LEFT JOIN reviewers AS R2 ON R2.reviewer_id = R1.reviewer_id;
       