require 'alphabetify'
require 'spec_helper'

describe Alphabetify do
  subject { Alphabetify }
  
  describe '#generate_hash' do
    
    it 'advances to the next letter' do
      expect(subject.generate_hash('ABCD')).to eq 'ABCE'
    end
      
    it 'rolls over the end letter' do
      expect(subject.generate_hash('ABCZ')).to eq 'ABDA'
    end
    
    it 'rolls two letters' do
      expect(subject.generate_hash('ABZZ')).to eq 'ACAA'
    end
    
    it 'rolls all letters and appends' do
      expect(subject.generate_hash('ZZZZ')).to eq 'AAAAA'
    end
    
  end
end