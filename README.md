# DogBreeds

Welcome to the DogBreeds gem! This program shows the user a list of the American
Kennel Club's groups of dog breeds. The user can see all of the breeds within a
chosen group and then get details on the characteristics of each breed.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'dog_breeds'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dog_breeds

## Usage

Run using ./bin/dog-breeds. Choose a dog breed group by entering the number of the group. Then choose
a breed from that group by entering the breed's number. Users will then see characteristics of the
chosen dog breed. Finally, enter 'Y' to learn about a different dog breed or 'N' to exit the program.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/<bethurban>/dog_breeds.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
