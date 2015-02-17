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
mergesort = Algae::Mergesort.new(some_array)
quicksort.sort == mergesort.sort == some_array.sort # should be true

```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/algae/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
