-- This proceedures returns the average rating of a restaurant in the DriverRating table
DELIMITER //

DROP PROCEDURE IF EXISTS AvgRestaurantRating //
CREATE PROCEDURE AvgRestaurantRating(
		IN restuarantID INT)
        
BEGIN
		SELECT R.restuarant_id, AVG(DR.overallRating)
        FROM Restaurant AS R
        INNER JOIN RestaurantRating AS RR
        USING(restaurant_id);
END;