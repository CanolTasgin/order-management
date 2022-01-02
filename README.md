# Order Management App w/Ruby on Rails

### Deployed on Heroku

[Visit Live App](https://order-management-parasut.herokuapp.com/ "Visit Live App")

#### Prerequisites

The setups steps expect following tools installed on the system.

- Git
- Ruby [3.0.3](https://www.ruby-lang.org/en/news/2021/11/24/ruby-3-0-3-released/)
- Rails [7.0.0](https://github.com/rails/rails/tree/v7.0.0)
- Postgres (gem "pg", "~> 1.1")

####Setting up

##### ### After setting up prerequisites, run Postgres server on local machine, use following command to migrate the database.

_Unexpected errors occured about migrations during development, I've fixed it for both my local machine and heroku but there may be some unexpected behaviour while you're setting it up from scratch._

`bin/rails db:migrate`

Run the application:
`bin/rails server`

#### Completed Tasks

- List Orders
- Get Order Details
- Create Order
- Edit/Update Order
- Delete Order
- List Categories
- Get Category Details
- Create Category
- Edit/Update Category
- Delete Category
- Show validation errors to users
- Tests
  - Model Tests are implemented
  - Basic integration tests are implemented for couple of page
- Filter orders by category

Run Model Tests:
`bin/rails test test/models/category_test.rb`

`bin/rails test test/models/order_test.rb`

Run Integration Tests:
`bin/rails test test/integration/category_flow_test.rb`

`bin/rails test test/integration/welcome_flow_test.rb`
