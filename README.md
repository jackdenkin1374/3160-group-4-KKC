# Introduction

## Group 4 - KKC

Members:

Kevin Cheng

Krishnamurthy Jayaraman 

Zaccary Hudson 

## Project Description

This project is extending a database on ordering and delivery of food from http://www.craveoncampus.com/ by creating a rating system. 

Users can rate the restaurants and drivers and the latter parties can also view users' ratings.

## Special Thanks

Special thanks to the Mavericks team (Dhananjay Arora, Akshay Babu, Sumit Kawale, Prashant Madaan) loaning to Group 4 - KKC their database for this project

# Use Case for Rating System

![Alt Text](https://github.com/jackdenkin1374/3160-group-4-KKC/blob/main/use%20case%20diagram.png)

# Business Rules

Rating System Business Rules

* Persons can rate drivers based on delivery time, courteousness, if the order is in good condition when delivered, a short review and a overall rating.
* Persons can rate restaurants based on quality of food, food options, order accuracy, a short review and a overall rating.
* One Person can only rate each driver and restaurant once after the order has been placed and delivered.
* Persons can edit their ratings at any time.
* One driver can have 0 to many ratings and each rating is uniquely associated with one driver.
* One restaurant can have 0 to many ratings and each rating is uniquely associated with one restaurant.


# EERD (full database)

![Alt Text](https://github.com/jackdenkin1374/3160-group-4-KKC/blob/main/ERD_With_Rating_System_Dec5.png)


# Data Dictionary (full database)

https://htmlpreview.github.io/?https://github.com/jackdenkin1374/3160-group-4-KKC/blob/main/Campus_Eats_Model_-_Data_Dictionary_Dec%205.html


# MySQL Queries

# Stored Procedure

There are 4 procedures that we have in this project: AddDriverRating, AddRestaurantRating, AvgDriverRating and AvgRestaurantRating.

* AddDriverRating adds the driver rating table.
* AddRestaurantRating adds the restaurant rating table.
* AvgDriverRating averages the overall rating of a single driver.
* AvgRestaurantRating averages the overall rating of a single restaurant.

# Future Work

We plan to build a simple web interface via github static pages to simulate gathering data about certain ratings of this restaurant or driver.

# MySQL dump

https://github.com/jackdenkin1374/3160-group-4-KKC/blob/main/Campus_eats_Fall2020_dump_12-5-2020.sql

# PPT Video (link)
