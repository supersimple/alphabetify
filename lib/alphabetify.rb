class Alphabetify
  ###############################################################################################################
  #
  # Alphabetify.rb
  # Generates sequential alphabetic hashes
  # 
  # Author: Todd Resudek - toddresudek@gmail.com | github: sprsmpl
  # 
  # Description:
  # Taking an existing alphabetic hash (of any length), will return the next hash in sequence.
  # If all characters in hash are rolled over, will append a new char (increase the length by 1.)
  # eg. 'ZZZZ' -> 'AAAAA'
  # eg. 'AAAZ' -> 'AABA'
  #
  # Seed the first hash - whatever length you'd like to start with - to begin.
  #
  # Usage: Alphabetify.generate_hash('THELASTHASHUSED')
  #
  ###############################################################################################################  
  HASH_CHARS = ('A'..'Z').to_a
  
  def self.generate_hash(str)
    complete = false
    new_hash = ''
    str.chars.reverse.each do |ch|
      #check this char for a rollover, if it does not need a rollver, exit
      unless complete
        #replace this char with the next char
        next_char, rollover = get_next_char(ch)
        new_hash << next_char
      else
        #keep this char
        new_hash << ch
      end
      complete = true unless rollover
    end
    #need to add another character to the end if all letters rollover
    if !complete
      new_hash.reverse! << HASH_CHARS.first
    end
    new_hash.reverse
  end
  
  private
  
  def self.get_next_char(char)
    unless char == HASH_CHARS.last
      return [char.next,false]
    else
      return [HASH_CHARS.first,true]
    end     
  end
  
  def self.leading_chars(current_hash)
    last_char = current_hash.slice!(-1)    
    [current_hash,last_char]
  end
  
  def self.rollover
    new_last_char, needs_rollover = next_char(last_char)
  end
  
end
