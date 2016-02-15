require 'alphabetify'
require 'spec_helper'

describe Alphabetify do
  subject { Alphabetify }
  
  describe '.generate_hash' do
        
    it 'advances to the next letter' do
      #ABCD
      expect(subject).to receive(:get_last_hash){ 'ABCD' }
      expect(subject.generate_hash).to eq 'ABCE'
    end
      
    it 'rolls over the end letter' do
      #ABCZ
      expect(subject).to receive(:get_last_hash){ 'ABCZ' }
      expect(subject.generate_hash).to eq 'ABDA'
    end
    
    it 'rolls two letters' do
      #ABZZ
      expect(subject).to receive(:get_last_hash){ 'ABZZ' }
      expect(subject.generate_hash).to eq 'ACAA'
    end
    
    it 'rolls all letters and appends' do
      #ZZZZ
      expect(subject).to receive(:get_last_hash){ 'ZZZZ' }
      expect(subject.generate_hash).to eq 'AAAAA'
    end
    
    it 'rolls numerals into alphas' do
      Alphabetify::HASH_CHARS = ('A'..'Z').to_a + (0..9).map(&:to_s)
      expect(subject).to receive(:get_last_hash){ '2349' }
      expect(subject.generate_hash).to eq '235A'
    end
    
    it 'rolls alphas into numerals' do
      Alphabetify::HASH_CHARS = ('A'..'Z').to_a + (0..9).map(&:to_s)
      expect(subject).to receive(:get_last_hash){ 'AAAZ' }
      expect(subject.generate_hash).to eq 'AAA0'
    end
    
  end
  
  describe '.seed_hash' do
        
    it 'raises an error if the seed is empty' do
      expect{subject.seed_hash(nil)}.to raise_error
    end
    
    it 'raises an error if the seed contains the wrong characters' do
      expect{subject.seed_hash('ABCDwrongEFGH')}.to raise_error
    end
    
  end
  
end