-- This proceedures allows customers to give a rating to the driver who delivered their food
DELIMITER //

DROP PROCEDURE IF EXISTS AddDriverRating;
CREATE PROCEDURE AddDriverRating(
			IN DriverID INT,
            IN PersonID INT,
            IN OrderNumber INT,
            IN DeliveryTime INT,
            IN Courteous INT,
            IN DeliveryCond INT,
            IN OverallRat INT,
            IN ReviewText TEXT)
            
BEGIN
			SET @NewRatingID = ((SELECT MAX(DR_id) FROM DriverRating) +1),
            @NewPersonID = PersonID,
            @NewOrderNum = OrderNumber,
            @NewDeliveryTime = DeliveryTime,
            @NewCourteous = Courteous,
            @NewDeliveryCond = DeliveryCond,
            @NewOverallRat = OverallRat,
            @NewReviewText = ReviewText;
            SET SQL_SAFE_UPDATES = 0;
            INSERT INTO DriverRating(DR_id, driver_id, person_id, orderNumber, courteousness, deliveryCondition, overallRating, reviewDesc)
            VALUES (@NewRatingID, @NewPersonID, @NewOrderNum, @NewDeliveryTime, @NewCourteous, @NewDeliveryCond, @NewOverallRat, @NewReviewText);
END;