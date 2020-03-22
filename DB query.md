Use the following query to count connections per day

SELECT count(*),Date(login) DateOnly FROM `connectionlog` group by DateOnly ORDER BY DateOnly  ASC