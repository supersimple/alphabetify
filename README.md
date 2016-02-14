# Alphabetify

Create an alphabetical hash

Taking an existing alphabetic hash (of any length), will return the next hash in sequence. If all characters in hash are rolled over, will append a new char (increase the length by 1.) 
eg. 'ZZZZ' -> 'AAAAA' 
eg. 'AAAZ' -> 'AABA'

## Installation

Add this line to your application's Gemfile:

    gem 'alphabetify'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install alphabetify

## Usage

Alphabetify.generate_hash will return next available hash

Alphabetify.seed_hash(str) will set the initial hash value. By default, the hash begins at 'AAAA'

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request