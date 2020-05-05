# frozen_string_literal: true

require '../lib/long_haired_cat'

RSpec.describe LongHairedCat, '#to_string' do
  context 'with name and age provided' do
    it 'says cats name and age with anything but rhubs as the name' do
      cat = LongHairedCat.new('test', 2)
      expect { cat.to_string }.to output("test is 2 years old\ntest does not wear a collar.\ntest is a long haired cat.\n").to_stdout
    end

    it 'says cats name, age, and colar status rhubs as the name' do
      cat = LongHairedCat.new('rhubs', 2)
      expect { cat.to_string }.to output("rhubs is 2 years old\nrhubs is wearing a pink collar.\nrhubs is a long haired cat.\n").to_stdout
    end
  end
end
