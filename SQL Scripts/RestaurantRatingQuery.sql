SELECT r.restaurant_name as Restaurant_Name, r.location as Location, AVG(rr.overallRating) as Average_Rating
FROM restaurant AS r
INNER JOIN restaurantrating AS rr
ON r.restaurant_id = rr.restaurant_id
GROUP BY rr.restaurant_id
ORDER BY Average_Rating DESC
LIMIT 5
