# Algae

A collection of algorithms written in Ruby, packaged as a gem. I'm mostly writing this for me, but if you dig algorithms and would like to improve existing implementations, provide alternate implementations, or add new algorithms or data structures to the library, please see *Contributing* below.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'algae'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install algae

## Usage

As of this writing there are only 2 sorting algorithms in here, quicksort and mergesort. You can use them like:

```
some_array = (1..10000).map{rand(99)} # Or whatever you want to sort.
quicksort = Algae::Quicksort.new(some_array)
quicksort.sort == some_array.sort # true

another_array = (1..10000).map{rand(99)}
mergesort = Algae::Mergesort.new(another_array)
mergesort.sort == another_array.sort # true
```

The tests are written with MiniTest. Run the tests with:

```
% bundle exec rake test
```

## Contributing

1. Fork it ( https://github.com/philcrissman/algae/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
