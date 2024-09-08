## Blog Application API - Laravel 11

This repository contains a RESTful API for a Blog Application built using Laravel 11. The project includes both API and web routes, with separate controllers for each, and is designed to handle User Authentication, CRUD operations for blog posts, and the ability to add comments to blog posts.

## Features

- User Authentication (Registration and Login)
- CRUD Operations for Blog Posts:
- Create: Add new posts via a popup modal.
- Edit: Modify posts via a popup modal.
- Show: View individual blog posts on a dedicated page.
- Delete: Remove posts via a confirmation popup.
- Comments: Users can add comments to individual blog posts.
- API and Web Separation: Different routes and controllers are used for API and web functionality.

## Bonus Features

- Pagination for listing blog posts.

## Technologies Used

- Laravel 11
- Laravel Sanctum for user authentication.
- Eloquent ORM for database interactions.
- Database Migrations and Seeders for setting up and populating the database.

## Setup Instructions

## Prerequisites
- PHP >= 8.1
- Composer
- MySQL
- Laravel 11 installed

## Installation Steps

1- Clone the repository:
 - git clone https://github.com/uzairkhan-prog/Blog-Posts-Api.git
 - cd blog-app-laravel

2- Install dependencies:
 - composer install

3- Copy the example environment file:
 - cp .env.example .env
   
4- Generate an application key:
 - php artisan key:generate
   
5- Configure the .env file: Set up your database credentials in the .env file:
 - DB_DATABASE=blogapp
 - DB_USERNAME=root
 - DB_PASSWORD=your-password
   
6- Serve the application:
 - php artisan serve

## API Endpoints

 - Method	        Endpoint	                    Description
 - POST	            /api/register	                Register a new user
 - POST	            /api/login	                    User login
 = GET	            /api/posts	                    List all blog posts (paginated)
 - GET	            /api/posts/{id}	                View a single blog post
 - POST	            /api/posts	                    Create a new blog post
 - PUT	            /api/posts/{id}	                Edit an existing blog post
 - DELETE	        /api/posts/{id}	                Delete a blog post
 - POST	            /api/posts/{id}/comments	    Add a comment to a blog post

## Web Routes
 - Web routes and controllers are defined separately in the web.php file, allowing you to access the blog application with CRUD functionality via the web interface.

## Authentication Details (Admin)
 - You can use the following login details to access the application:
 - Email: admin@gmail.com
 - Password: 12345678

## Database
 - The project uses MySQL with a database named blogapp.sql.
 - Database migrations and seeders are included in the /database/seeders/ directory.

## CRUD Features Implementation
 - Create Post: A popup modal opens where you can add a new post.
 - Edit Post: A popup modal opens to edit an existing post.
 - Show Post: The post opens on a new page where all details are displayed.
 - Delete Post: Clicking delete opens a confirmation popup (Yes/No). On confirming, the post is deleted.
 - Comments: Users can add comments to blog posts, which are displayed nicely.

## Assumptions
 - Validation: Proper input validation and error handling have been implemented to ensure data integrity.
 - Authentication: User authentication has been implemented using Laravel Sanctum to secure API endpoints.
 - Pagination: Blog posts are paginated in both the API and web views.

## Conclusion
 - This project provides a simple yet functional Blog Application API using Laravel 11. It demonstrates good practices in handling user authentication, database interactions using 
 - Eloquent, and proper CRUD functionality with separate implementations for web and API routes.
 - 
## License
 - This project is open-source and free to use under the MIT license.
