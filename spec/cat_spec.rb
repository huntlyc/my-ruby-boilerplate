# frozen_string_literal: true

require '../lib/cat'

RSpec.describe Cat, '#to_string' do
  context 'with name and age provided' do
    it 'says cats name and age with anything but rhubs as the name' do
      cat = Cat.new('test', 2)
      expect { cat.to_string }.to output("test is 2 years old\ntest does not wear a collar.\n").to_stdout
    end

    it 'says cats name, age, and colar status rhubs as the name' do
      cat = Cat.new('rhubs', 2)
      expect { cat.to_string }.to output("rhubs is 2 years old\nrhubs is wearing a pink collar.\n").to_stdout
    end
  end
end
