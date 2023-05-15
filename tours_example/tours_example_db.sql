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
	FOREIGN KEY (tour_id) REFERENCES tour_type(tour_type_id)
);


INSERT INTO tour_type (tour_type_name) VALUES 
('Adventure Tours'),
('Cultural Tours'),
('Beach Tours'),
('Wildlife Tours'),
('Safari Tours');

INSERT INTO tour (tour_title, tour_description, tour_type_id, tour_country, tour_city, tour_hotel, tour_price, tour_img_url) VALUES
('Climbing Mount Everest', 'Experience the thrill of climbing the world\'s highest mountain', 1, 'Nepal', 'Kathmandu', 'Himalayan Resort', 2500.00, 'https://example.com/img/climbing_everest.jpg'),
('Discovering Ancient Egypt', 'Explore the rich history and culture of ancient Egypt', 2, 'Egypt', 'Cairo', 'Nile Hilton', 1500.00, 'https://example.com/img/egypt_tour.jpg'),
('Relaxing in the Maldives', 'Escape to a tropical paradise of sun, sand, and sea', 3, 'Maldives', 'Male', 'Four Seasons Resort', 3000.00, 'https://example.com/img/maldives_beach.jpg'),
('Safari in the Serengeti', 'Witness the majesty of African wildlife in their natural habitat', 4, 'Tanzania', 'Arusha', 'Serengeti Safari Lodge', 2000.00, 'https://example.com/img/serengeti_safari.jpg'),
('Jungle Adventure in the Amazon', 'Experience the wonders of the world\'s largest rainforest', 5, 'Brazil', 'Manaus', 'Amazon Eco Lodge', 1800.00, 'https://example.com/img/amazon_jungle.jpg');

SELECT tour_id, tour_title, tour_description, tour_type_name, tour_country, tour_city, 
tour_hotel, tour_price, tour_img_url
FROM tour INNER JOIN tour_type USING (tour_type_id);
