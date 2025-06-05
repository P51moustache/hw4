# Travel Journal App

A Ruby on Rails application for creating and managing personal travel journals with user authentication, image uploads, and responsive design.

## Features

- User authentication with bcrypt
- Personal travel places management
- Journal entries with images
- Responsive Bootstrap design
- User authorization (users only see their own entries)
- File attachments for journal entries

## Setup Instructions

1. Install dependencies:
   ```
   bundle install
   ```

2. Setup the database:
   ```
   rails db:setup
   ```

3. Run the application:
   ```
   rails server
   ```

4. Visit `http://localhost:3000` to use the application

## Live Deployment

This application is deployed on Render at: [URL will be added after deployment]

## User Stories Implemented

- ✅ User authentication (login/signup/logout)
- ✅ Password encryption with bcrypt
- ✅ User authorization (users only see their own data)
- ✅ Places management
- ✅ Journal entries with title, description, date, and optional images
- ✅ Bootstrap responsive design
- ✅ File attachments for entries

## Technology Stack

- Ruby 3.2.2
- Rails 7.1.3
- SQLite (development) / PostgreSQL (production)
- Bootstrap 5.3.0
- bcrypt for password encryption
- Active Storage for file uploads

## Assignment Details

Full instructions at https://entr451.com/assignment-4/
