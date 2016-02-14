Gem::Specification.new do |s|
  s.name        = 'alphabetify'
  s.version     = '1.0.0'
  s.date        = '2016-02-14'
  s.summary     = "Create unique alphabetical hashes"
  s.description = "Taking an existing alphabetic hash (of any length), will return the next hash in sequence.
                  If all characters in hash are rolled over, will append a new char (increase the length by 1.)
                  [eg. 'ZZZZ' -> 'AAAAA']
                  [eg. 'AAAZ' -> 'AABA']"
  s.authors     = ["Todd Resudek"]
  s.email       = 'toddresudek@gmail.com'
  s.files       = ["lib/alphabetify.rb"]
  s.homepage    = 'https://github.com/supersimple/alphabetify'
  s.license     = 'Apache-2.0'
  s.required_ruby_version = '>= 2.0.0'
  
  s.add_development_dependency 'rspec'
end