# Opyin Backend

Opiyn Backend! A simple backend system with two models - Item and Review. Item is any object which can be reviewed. Each item in the backend can have many reviews.

## Dependencies

	* ruby 2.0 or above
	* rails 4.0 or above
	* active_model_serializers
	* kaminari
	* faker
	* rspec-rails
	
## Installation && Running

To start the backend server, execute the following commands directly from the source folder:
	
	$ git clone https://github.com/dawdler/opyin-backend-assignment.git	
	
	$ cd opyin_backend/

	$ bundle install

	$ rake db:migrate
	
	$ rake db:seed # for seeding of database

	$ rails s

## Documentation

Both the Item and Review resources are generated using rails scaffolding.

      $ rails g scaffold item
      $ rails g scaffold review

For the implementation of serializers, active_model_serializers gem has been used.

      $ rails g serializer item
      $ rails g serializer review

For pagination, kaminari gem is used. 

To generate seed data, faker gem has been used. For the purpose of testing, rspec-rails and factory_girl_rails has been used.

	$ rspec spec/controllers/item_controller_test.rb
	
	$ rspec spec/models/item_test.rb

## Using the APIs endpoints

The code is deployed on [heroku](https://opiyn-assignment.herokuapp.com/).

Using curl to access the APIs:
	
	$ curl https://opiyn-assignment.herokuapp.com/items?page=2
	
	$ curl https://opiyn-assignment.herokuapp.com/items/%7B2d38771e-26a7-b8b0-d0fb7ec58ab5%7D
	
