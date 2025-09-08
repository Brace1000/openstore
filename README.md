# OpenStore

OpenStore is a full-featured e-commerce platform built with Ruby on Rails. It allows users to browse products, add them to a cart, and manage their own product listings if they are sellers.

## Features

*   **Product Management:**
    *   Browse and view detailed product listings.
    *   Sellers can create, update, and manage their products.
    *   Support for product attributes like brand, model, description, condition, finish, title, and price.
    *   Image uploads for products with thumbnail generation.
*   **User Authentication:**
    *   Secure user registration and login powered by Devise.
    *   Users can manage their profiles, including updating their name and password.
    *   Password recovery functionality.
*   **Shopping Cart:**
    *   Add products to a shopping cart.
    *   View cart contents with itemized products, quantities, and subtotals.
    *   Increase or decrease the quantity of items in the cart.
    *   Remove individual items from the cart.
    *   Empty the entire cart.
*   **Guest & User Carts:**
    *   Guests can add items to a temporary cart.
    *   If a guest with items in their cart logs in or signs up, their cart items are transferred to their user account.
*   **Styling:**
    *   Utilizes the Bulma CSS framework for a modern and responsive design.
    *   Custom stylesheets and functional CSS utility classes.

## Tech Stack

*   **Backend:** Ruby 3.2.3, Rails 7.1.3
*   **Database:** SQLite3
*   **Frontend JavaScript:** Webpacker, Turbolinks, ActionCable
*   **CSS:** Sass, Bulma
*   **Authentication:** Devise
*   **File Uploads:** CarrierWave, MiniMagick
*   **Forms:** SimpleForm
*   **Development Server:** Puma
*   **Background Jobs:** ActiveJob (configured, though no specific jobs are defined in the provided structure beyond the default `ApplicationJob`)

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

*   Ruby 3.2.3 or a compatible version (check `.ruby-version` or `Gemfile`)
*   Bundler (Ruby gem: `gem install bundler`)
*   Node.js (for Webpacker/JavaScript dependencies)
*   Yarn (JavaScript package manager: `npm install -g yarn` or via other methods)

### Installation

1.  **Clone the repository:**
    ```bash
    git clone https://learn.zone01kisumu.ke/git/bobaigwa/shop.git
    cd shop
    ```

2.  **Install Ruby dependencies:**
    ```bash
    bundle install
    ```

3.  **Install JavaScript dependencies:**
    ```bash
    yarn install
    ```

4.  **Set up the database:**
    This will create the database (if it doesn't exist), load the schema, and run any pending migrations.
    ```bash
    rails db:prepare
    ```
    Alternatively, you can run these commands separately:
    ```bash
    rails db:create
    rails db:migrate
    ```

5.  **Seed the database (optional but recommended):**
    This will populate the database with sample data (a user and some products) as defined in `db/seeds.rb`.
    ```bash
    rails db:seed
    ```

### Running the Application

1.  **Start the Rails server:**
    ```bash
    rails server
    ```
    or
    ```bash
    bin/rails s
    ```
    The application will typically be available at `http://localhost:3000`.

2.  **Start the Webpack development server (in a separate terminal):**
    This is necessary for compiling JavaScript and CSS assets on the fly during development.
    ```bash
    ./bin/webpack-dev-server
    ```

You should now be able to access OpenStore in your browser.

## Key Directories

*   `app/assets/`: Contains static assets like images, stylesheets, and JavaScript files not managed by Webpacker packs.
*   `app/controllers/`: Handles incoming web requests and orchestrates responses.
*   `app/javascript/`: Location for JavaScript modules managed by Webpacker. `packs/application.js` is the main entry point.
*   `app/models/`: Defines the application's data models and business logic (e.g., `Product`, `User`, `Cart`).
*   `app/views/`: Contains the ERB templates used to render HTML responses.
*   `config/`: Application configuration files, including `routes.rb` for URL definitions and `database.yml` for database settings.
*   `db/`: Database-related files, including `schema.rb`, migration files in `db/migrate/`, and `seeds.rb`.
*   `public/`: Publicly accessible files, including static error pages and compiled assets (by Webpacker).