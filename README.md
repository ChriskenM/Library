# Library Rails Application

This is a Ruby on Rails 8 application that implements a book lending library with built-in authentication, a polished user interface styled with Bootstrap, and features for borrowing and returning books. Registered users can view available books, borrow them, return them, and see a list of their currently borrowed books.

---

## Table of Contents

- [Features](#features)
- [Requirements](#requirements)
- [Setup](#setup)
- [Running the Application](#running-the-application)
- [Usage](#usage)
- [Project Structure](#project-structure)
- [Contributing](#contributing)
- [License](#license)

---

## Features

- **User Authentication:** Built-in Rails 8 authentication for sign in and sign up.
- **Book Listing:** View a list of books with clear availability indicators.
- **Book Details:** Detailed view of each book with a “Borrow” button for available books.
- **Borrowing System:** Create a borrowing record with a due date (2 weeks from borrowing) and prevent multiple borrowings of the same book.
- **User Profile:** View currently borrowed books with due dates and return functionality.
- **Responsive UI:** A modern interface styled with Bootstrap for an optimal experience on all devices.

---

## Requirements

- **Ruby:** 3.1+ (or the version specified in `.ruby-version`)
- **Rails:** 8.0+
- **Bundler**
- **Database:** SQLite (default) – configurable to PostgreSQL, MySQL, etc.

---

## Setup

1. **Clone the Repository**

```bash
git clone https://github.com/ChriskenM/Library.git
cd Library
```
2. **Install Dependencies**

Install Ruby gems via Bundler:

```bash
bundle install
```
3. **Set Up the Database**

Create and migrate the database:

```bash

rails db:create
rails db:migrate
```

Optionally, seed the database with sample book records:

```bash

rails db:seed
```

4. **Configure Environment Variables**

If necessary, create a .env file or configure environment variables (e.g., for production) as needed. The default setup uses SQLite.

## Running the Application

Start the Rails server:

```bash

rails server
```
Then, open your browser and visit http://localhost:3000 to view the application.

## Usage

**Homepage:**

- If not signed in, you will see a sign in form along with an option to sign up.
- If signed in, the homepage displays a grid of available books with indicators for their availability.

**Book Details:**

- Click on a book title to view its details. If the book is available, you can borrow it.

**Borrowing & Returning:**

- Borrowing creates a record with a due date two weeks from the borrowing date.
- View your borrowed books in your user profile and use the "Return" button to return them.

**Navigation:**

- The navbar includes links to Home, Borrow, Profile, and the appropriate authentication actions (Sign In/Sign Up or Sign Out).

## Project Structure
- Most Basic overview

```bash


    library/                    # Rails application directory
    ├── app/
    │   ├── controllers/        # Controllers (users, sessions, books, etc)
    │   ├── models/             # Models (User, Book, Borrowing)
    │   ├── views/              # Views with Bootstrap styling
    │   │   ├── home/
    │   │   │   ├── index.html.erb   # Homepage with sign in form or books
    │   │   │   └── _header.html.erb   # Header with navbar and branding
    │   │   ├── books/
    │   │   │   ├── index.html.erb     # Book listing page
    │   │   │   └── show.html.erb      # Book details page
    │   │   └── users/          # Sign up form for users
    │   └── assets/             # Stylesheets, images, JavaScript, etc.
    ├── config/
    │   └── routes.rb           # Route definitions for sessions, users...
    ├── db/
    │   ├── migrate/            # Database migrations
    │   └── seeds.rb            # Seed file for initial data
    └── ...                     # Other Rails standard directories and files
```

## Contributing

Contributions are welcome! Please fork the repository and submit pull requests with detailed commit messages. Follow the established commit style (e.g., feat(ui): ..., fix(ui): ...) for clarity and consistency.

## License

This project is licensed under the MIT License.