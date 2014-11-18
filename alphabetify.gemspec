Gem::Specification.new do |s|
  s.name        = 'alphabetify'
  s.version     = '0.0.2'
  s.date        = '2014-11-17'
  s.summary     = "Create unique alphabetical hashes"
  s.description = "Taking an existing alphabetic hash (of any length), will return the next hash in sequence.
                  If all characters in hash are rolled over, will append a new char (increase the length by 1.)
                  eg. 'ZZZZ' -> 'AAAAA'
                  eg. 'AAAZ' -> 'AABA'"
  s.authors     = ["Todd Resudek"]
  s.email       = 'toddresudek@gmail.com'
  s.files       = ["lib/alphabetify.rb"]
  s.homepage    = 'http://rubygems.org/gems/alphabetify'
  s.license     = 'Apache-2.0'
end