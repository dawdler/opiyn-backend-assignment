# Opyin Backend

Opiyn Backend! A simple backend system with two models - Item and Review. Item is any object which can be reviewed. Each item in the backend can have many reviews.

## Dependencies

	* rails 4.0 or above
	* active_model_serializers
	* kaminari
	* faker
	
## Running

To start the backend server, execute the following commands directly from the source folder:
	
	$ cd opyinbackend/

	$ rails s

## Documentation

Both the Item and Review resources are generated using rails scaffolding.

      $ rails g scaffold item
      $ rails g scaffold review

For the implementation of serializers, active_model_serializers gem has been used.

      $ rails g serializer item
      $ rails g serializer review

For pagination, kaminari gem is used. 

Similarly to generate seed data, faker gem has been used
