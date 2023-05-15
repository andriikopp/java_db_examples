DROP DATABASE IF EXISTS real_estate_example;
CREATE DATABASE real_estate_example;

USE real_estate_example;

CREATE TABLE real_estate_types (
	ret_id INT PRIMARY KEY,
	ret_name VARCHAR(100) NOT NULL
);

CREATE TABLE real_estate_offers (
	reo_id INT AUTO_INCREMENT PRIMARY KEY,
	reo_title VARCHAR(255) NOT NULL,
	reo_description TEXT NOT NULL,
	ret_id INT NOT NULL,
	reo_address VARCHAR(255) NOT NULL,
	reo_city VARCHAR(100) NOT NULL,
	reo_country VARCHAR(100) NOT NULL,
	reo_price DECIMAL(18,2) NOT NULL,
	reo_img_url TEXT NOT NULL,
	FOREIGN KEY (ret_id) REFERENCES real_estate_types(ret_id)
);

INSERT INTO real_estate_types (ret_id, ret_name) VALUES (1, 'House');
INSERT INTO real_estate_types (ret_id, ret_name) VALUES (2, 'Apartment');
INSERT INTO real_estate_types (ret_id, ret_name) VALUES (3, 'Condo');
INSERT INTO real_estate_types (ret_id, ret_name) VALUES (4, 'Townhouse');
INSERT INTO real_estate_types (ret_id, ret_name) VALUES (5, 'Vacant Land');

INSERT INTO real_estate_offers (reo_title, reo_description, ret_id, reo_address, reo_city, reo_country, reo_price, reo_img_url) VALUES ('Beautiful House in the Suburbs', 'A spacious and modern house located in a quiet neighborhood. Features 4 bedrooms, 3 bathrooms, a large backyard, and a two-car garage.', 1, '1234 Main St', 'Anytown', 'USA', 500000.00, 'https://example.com/images/house.jpg');
INSERT INTO real_estate_offers (reo_title, reo_description, ret_id, reo_address, reo_city, reo_country, reo_price, reo_img_url) VALUES ('Luxury Apartment in the City', 'A stunning and luxurious apartment located in the heart of the city. Features 2 bedrooms, 2 bathrooms, a gourmet kitchen, and panoramic city views.', 2, '5678 Broadway', 'Anytown', 'USA', 1000000.00, 'https://example.com/images/apartment.jpg');
INSERT INTO real_estate_offers (reo_title, reo_description, ret_id, reo_address, reo_city, reo_country, reo_price, reo_img_url) VALUES ('Spacious Condo with Ocean Views', 'A beautiful and spacious condo located in a beachfront building. Features 3 bedrooms, 2 bathrooms, a large balcony, and breathtaking ocean views.', 3, '910 Beach Rd', 'Anytown', 'USA', 750000.00, 'https://example.com/images/condo.jpg');
INSERT INTO real_estate_offers (reo_title, reo_description, ret_id, reo_address, reo_city, reo_country, reo_price, reo_img_url) VALUES ('Charming Townhouse in a Historic District', 'A charming and historic townhouse located in a picturesque neighborhood. Features 2 bedrooms, 1.5 bathrooms, a cozy fireplace, and a private courtyard.', 4, '1112 Elm St', 'Anytown', 'USA', 400000.00, 'https://example.com/images/townhouse.jpg');
INSERT INTO real_estate_offers (reo_title, reo_description, ret_id, reo_address, reo_city, reo_country, reo_price, reo_img_url) VALUES ('Scenic Vacant Land for Sale', 'A beautiful and scenic piece of vacant land located in a rural area. Features 10 acres of rolling hills and stunning views of the countryside.', 5, '1314 Oak Ln', 'Anytown', 'USA', 200000.00, 'https://example.com/images/vacant-land.jpg');
