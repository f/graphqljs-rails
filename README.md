# GraphQL.js for Rails

Adds [GraphQL.js](https://github.com/f/graphql.js) to your asset pipeline.

## Features

 - Nothing depended, plain vanilla JavaScript.
 - Plug & Play.
 - Runs on most of the browsers.
 - **For more information and read how to use GraphQL.js in your Rails application, visit [f/graphql.js] (https://github.com/f/graphql.js)**

If you are **looking for a server** try [GraphQL-Ruby](https://github.com/rmosolgo/graphql-ruby). This gem works with [GraphQL-Ruby](https://github.com/rmosolgo/graphql-ruby).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'graphqljs-rails'
```

And then execute:

    $ bundle install

And install it to your `application.js`:

```js
//= require graphql
var graph = graphql("/graphql", {
  fragments: {
    ...
  }
})
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

