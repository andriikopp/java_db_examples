DROP DATABASE IF EXISTS tours_example;
CREATE DATABASE tours_example;

USE tours_example;

CREATE TABLE tour_type (
	tour_type_id INT AUTO_INCREMENT PRIMARY KEY,
	tour_type_name VARCHAR(100) NOT NULL
);

CREATE TABLE tour (
	tour_id INT AUTO_INCREMENT PRIMARY KEY,
	tour_title VARCHAR(255) NOT NULL,
	tour_description TEXT NOT NULL,
	tour_type_id INT NOT NULL,
	tour_country VARCHAR(100) NOT NULL,
	tour_city VARCHAR(100) NOT NULL,
	tour_hotel VARCHAR(255) NOT NULL,
	tour_price DECIMAL(10,2) NOT NULL,
	tour_img_url TEXT NOT NULL,
	FOREIGN KEY (tour_type_id) REFERENCES tour_type(tour_type_id)
);


INSERT INTO tour_type (tour_type_name) VALUES 
('Adventure Tours'),
('Cultural Tours'),
('Beach Tours'),
('Wildlife Tours'),
('Safari Tours');

INSERT INTO tour (tour_title, tour_description, tour_type_id, tour_country, tour_city, tour_hotel, tour_price, tour_img_url) VALUES
('Climbing Mount Everest', 'Experience the thrill of climbing the world\'s highest mountain', 1, 'Nepal', 'Kathmandu', 'Himalayan Resort', 2500.00, 'https://images.unsplash.com/photo-1492584328860-c0c7bb599679?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y2xpbWJpbmclMjBldmVyZXN0fGVufDB8MHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
('Discovering Ancient Egypt', 'Explore the rich history and culture of ancient Egypt', 2, 'Egypt', 'Cairo', 'Nile Hilton', 1500.00, 'https://images.unsplash.com/photo-1643236312558-2725e111238b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZWd5cHQlMjB0b3VyfGVufDB8MHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
('Relaxing in the Maldives', 'Escape to a tropical paradise of sun, sand, and sea', 3, 'Maldives', 'Male', 'Four Seasons Resort', 3000.00, 'https://images.unsplash.com/photo-1622779536320-bb5f5b501a06?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFsZGl2ZXMlMjBiZWFjaHxlbnwwfDB8MHx8&auto=format&fit=crop&w=500&q=60'),
('Safari in the Serengeti', 'Witness the majesty of African wildlife in their natural habitat', 4, 'Tanzania', 'Arusha', 'Serengeti Safari Lodge', 2000.00, 'https://images.unsplash.com/photo-1504509300398-bbc15e0c51f5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c2VyZW5nZXRpJTIwc2FmYXJpfGVufDB8MHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
('Jungle Adventure in the Amazon', 'Experience the wonders of the world\'s largest rainforest', 5, 'Brazil', 'Manaus', 'Amazon Eco Lodge', 1800.00, 'https://images.unsplash.com/photo-1593069567131-53a0614dde1d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YW1hem9uJTIwanVuZ2xlfGVufDB8MHwwfHw%3D&auto=format&fit=crop&w=500&q=60');

SELECT tour_id, tour_title, tour_description, tour_type_name, tour_country, tour_city, 
tour_hotel, tour_price, tour_img_url
FROM tour INNER JOIN tour_type USING (tour_type_id);
