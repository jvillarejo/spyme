# Spyme

Track your visits location using the **Geolocation Browser API** easily

Location is stored in the session, it doesn't generate any model so you can persist it in anyway you like.

You get:

- **better geolocation** - Browser geolocation has much better exactness than IP-based geocoding.
- **persist it the way you want it** - As Spyme doesn't define any persisting model, you can map it to your model in any way you like.

## How it works

When someone visits your site Spyme will check if the browser support the Geolocation API and if the user accepts to be tracked it automatically stores the the location in the session.

Use `current_location` to access the Location object for the current visit.

## Power up

Use [Geocoder](https://github.com/alexreisner/geocoder) with Spyme to track your model objects near the visit current location.

### Example: 

```ruby
Venue.near(current_location.coords, 20) # venues within 20 miles current visit location
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'spyme'
```

Lastly, include the javascript file in `app/assets/javascripts/application.js` after jQuery.

```javascript
//= require jquery
//= require spyme
```

### Location

Spyme automatically stores the current location at the session you can access in your controller with this helper method

```ruby
current_location
```

Sometimes the user deny the tracking or the browser doesn't support geolocation, you can check if the current location is valid

```ruby
current_location.valid?
```

Also the `Spyme::Model::Location` object has some useful methods

#### to_hash
```ruby
current_location.to_hash
```

returns `{ latitude: # tracked_latitude, longitude: # tracked_longitude }`

#### coords
```ruby
current_location.coords
```

returns `[ # tracked_latitude, # tracked_longitude]`

## Contributing

Everyone is encouraged to help improve this project. Here are a few ways you can help:

- [Report bugs](https://github.com/jvillarejo/spyme/issues)
- Fix bugs and [submit pull requests](https://github.com/jvillarejo/spyme/pulls)
- Suggest or add new features


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/jvillarejo/spyme/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

