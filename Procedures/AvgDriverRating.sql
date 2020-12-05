-- This proceedures returns the average rating of a driver in the DriverRating table
DELIMITER //

DROP PROCEDURE IF EXISTS AvgDriverRating //
CREATE PROCEDURE AvgDriverRating(
		IN driverID INT)
        
BEGIN
		SELECT D.driver_id, AVG(DR.overallRating)
        FROM Driver AS D
        INNER JOIN DriverRating AS DR
        USING(driver_id);
END;