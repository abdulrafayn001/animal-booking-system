# Animal Booking System - Test Project

This application is an Animal Booking System built using Rails 7. It allows users to make bookings for their pets for a specified duration and date. Additionally, it incorporates a pricing service to determine the cost of the service based on the type of animal and the duration of the booking.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Features](#features)
  - [Booking Form](#booking-form)
  - [Pricing Service](#pricing-service)
- [Contributing](#contributing)

## Installation

To install and run this application locally, follow these steps:

1. Ensure you have Ruby installed on your system. You can download it from [Ruby's official website](https://www.ruby-lang.org/en/downloads/).
2. Make sure you have [Rails 7](https://rubyonrails.org/) insalled.
3. Clone this repository to your local machine.

   ```bash
   git clone https://github.com/abdulrafayn001/animal-booking-system.git
   ```

4. Navigate into the project directory.

   ```bash
   cd animal-booking-system
   ```

5. Install dependencies using Bundler.

   ```bash
   bundle install
   ```

6. Set up the database.

   ```bash
   rails db:create
   rails db:migrate
   ```

7. Start the Rails server.

   ```bash
   rails server
   ```

## Usage

Once the application is running, users can access it via a web browser. They will be presented with a form to fill out for making a booking. The required fields for the booking form are:

- First Name
- Last Name
- Animal Name
- Animal Type (Dog/Cat)
- Hours Requested (minimum 2, maximum 8)
- Date of Service

After submitting the form, the pricing engine will calculate the cost of the service based on the provided information.

## Features

### Booking Form

Collects necessary information from the user for making a booking, including first name, last name, animal name, animal type, hours requested, and date of service.

### Pricing Service

Calculates the cost of the service based on the following criteria:

- Base charge of $20
- $10 additional per hour for dogs
- $5 additional per hour for cats

## Contributing

Contributions are welcome! If you would like to contribute to this project, please fork the repository, make your changes, and submit a pull request. For major changes, please open an issue first to discuss the proposed changes.
