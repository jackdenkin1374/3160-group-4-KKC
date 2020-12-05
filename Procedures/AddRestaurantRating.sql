-- This proceedures allows customers to give a rating to the restaurant they purchased their food from
DELIMITER //

DROP PROCEDURE IF EXISTS AddRestaurantRating;
CREATE PROCEDURE AddRestaurantRating(
            IN PersonID INT,
            IN RestaurantID INT,
            IN OrderNumber INT,
            IN foodQuality INT,
            IN foodOpts INT,
            IN accuracy INT,
            IN OverallRat INT,
            IN ReviewText TEXT)
            
BEGIN
			SET @NewRatingID = ((SELECT MAX(RR_id) FROM RestaurantRating) +1),
            @NewPersonID = PersonID,
            @NewOrderNum = OrderNumber,
            @NewRestaurantID = RestaurantID,
            @NewFoodQuality = foodQuality,
            @NewFoodOpts = foodOpts,
            @NewOverallRat = OverallRat,
            @NewReviewText = ReviewText;
            SET SQL_SAFE_UPDATES = 0;
            INSERT INTO RestaurantRating(RR_id, person_id, restaurant_id, orderNumber, qualityOfFood, foodOptions, orderAcc, overallRating, reviewDesc)
            VALUES (@NewRatingID, @NewPersonID, @NewOrderNum, @NewRestaurantID, @NewFoodQuality, @NewFoodOpts, @NewOverallRat, @NewReviewText);
END;