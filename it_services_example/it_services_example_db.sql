DROP DATABASE IF EXISTS it_services_example;
CREATE DATABASE it_services_example;

USE it_services_example;

CREATE TABLE service_type (
	service_type_id INT AUTO_INCREMENT PRIMARY KEY,
	service_type_name VARCHAR(100) NOT NULL
);

CREATE TABLE service (
	service_id INT AUTO_INCREMENT PRIMARY KEY,
	service_title VARCHAR(255) NOT NULL,
	service_description TEXT NOT NULL,
	service_type_id INT NOT NULL,
	service_terms INT NOT NULL,
	service_price_min DECIMAL(10,2) NOT NULL,
	service_price_max DECIMAL(10,2) NOT NULL,
	service_img_url TEXT NOT NULL,
	FOREIGN KEY (service_type_id) REFERENCES service_type(service_type_id)
);

INSERT INTO service_type (service_type_id, service_type_name) VALUES (1, 'Web Development');
INSERT INTO service_type (service_type_id, service_type_name) VALUES (2, 'Graphic Design');
INSERT INTO service_type (service_type_id, service_type_name) VALUES (3, 'Content Writing');
INSERT INTO service_type (service_type_id, service_type_name) VALUES (4, 'Digital Marketing');

INSERT INTO service (service_title, service_description, service_type_id, service_terms, service_price_min, service_price_max, service_img_url) VALUES ('Website Design', 'Get a professional and responsive website designed for your business or personal brand. Includes up to 5 pages and 2 revisions.', 1, 30, 500.00, 2000.00, 'https://images.unsplash.com/photo-1542744094-3a31f272c490?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8d2ViJTIwZGVzaWdufGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60');
INSERT INTO service (service_title, service_description, service_type_id, service_terms, service_price_min, service_price_max, service_img_url) VALUES ('Logo Design', 'Get a custom and professional logo designed for your brand. Includes up to 3 initial concepts and 2 revisions.', 2, 14, 100.00, 500.00, 'https://images.unsplash.com/photo-1586717791821-3f44a563fa4c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8bG9nbyUyMGRlc2lnbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60');
INSERT INTO service (service_title, service_description, service_type_id, service_terms, service_price_min, service_price_max, service_img_url) VALUES ('Blog Writing', 'Get high-quality and SEO-friendly blog posts written for your website or blog. Includes up to 1000 words per post and 1 revision.', 3, 7, 50.00, 250.00, 'https://images.unsplash.com/photo-1519337265831-281ec6cc8514?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8YmxvZyUyMHdyaXRpbmd8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60');
INSERT INTO service (service_title, service_description, service_type_id, service_terms, service_price_min, service_price_max, service_img_url) VALUES ('Social Media Marketing', 'Get your brand noticed on social media with our targeted marketing campaigns. Includes ad creation and management on up to 2 platforms.', 4, 30, 1000.00, 5000.00, 'https://images.unsplash.com/photo-1611926653458-09294b3142bf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8c29jaWFsJTIwbWVkaWElMjBtYXJrZXRpbmd8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60');
