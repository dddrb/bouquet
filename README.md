# Bouquet

Implement florist in Ruby on Rails.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bouquet-core', github: 'dddrb/bouquet'
gem 'bouquet-gate', github: 'dddrb/bouquet'
gem 'bouquet-store', github: 'dddrb/bouquet'
```

## Usage

```
Rails.application.routes.draw do
  mount Bouquet::Gate::Engine => '/api'
  mount Bouquet::Store::Engine => '/store'
end
```

## License

* MIT
