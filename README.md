alphabetify
===========

Alphabetify Ruby Gem

Taking an existing alphabetic hash (of any length), will return the next hash in sequence.
If all characters in hash are rolled over, will append a new char (increase the length by 1.)
eg. 'ZZZZ' -> 'AAAAA'
eg. 'AAAZ' -> 'AABA'

Seed the first hash - whatever length you'd like to start with - to begin.

Usage: Alphabetify.generate_hash('THELASTHASHUSED')
