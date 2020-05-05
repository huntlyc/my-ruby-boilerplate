# frozen_string_literal: true

require_relative '../lib/cat'
require_relative '../lib/long_haired_cat'

Cat.new('rhubs', 3).to_string
Cat.new('onion', 22).to_string
LongHairedCat.new('toffo', 7).to_string
