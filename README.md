### Narwhal Shopify App

A simple private app for Shopify (embedded) using the Shopify API, Ruby on Rails and a database of your choice. The app will list orders that are placed that contain products with the word “narwhal” in them. That’s it.

#### Acceptance Criteria
> Merchants can install the app from your application (even though it won't be listed on the app store). They shouldn’t need anything but a Shopify Account and Shopify Store to sign up. After a merchant installs the app they should be able to log into the app again from their Shopify dashboard.
After the app is installed, the app should monitor for new orders.

> When a new order is received it should check to see if there are any products in the order that contain the word “Narwhal”. If there are, then it should add a record in the DB or somewhere. We’ll call these “Narwhal Orders”.

> When a merchant accesses the app through their admin, the app should show a responsive list of Narwhal Orders.

#### Ruby version
> - Ruby 2.6.5

#### System dependencies
> - Rails >= 6
> - Postgres DB
> - Redis DB
> - Sidekiq

#### To get started
> - Install Docker
> - Run `$ docker-compose up --build`

#### How to run the test suite
> `$ docker-compose run -e "RAILS_ENV=test" narwhals_app rspec -f d`

#### Services (job queues, cache servers, search engines, etc.)
>- Sidekiq - For Background Job
>- Redis - For Job Persistence
>- Rspec - For Writing and running tests
>- Rubocop - For Linting

#### Deployment instructions
> - `$ git push heroku master`

#### LICENSE
>- [MIT License](https://github.com/jattoabdul/andela-bootcamp-postit/blob/master/LICENSE)

#### Author(s)
>- [Aminujatto Abdulqahhar](https://github.com/jattoabdul)
