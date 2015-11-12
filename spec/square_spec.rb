require 'rspec'
require './square.rb'

describe Square do
  context 'with no parameters' do
    it 'returns an array that can be joined to be a square' do
      expected_result = %w(
        33333
        32223
        32123
        32223
        33333
      )
      expect(Square.new).to eq(expected_result)
    end
  end

  # IMPORTANT!
  # DO NOT GET THE SECOND SPEC TO PASS UNTIL YOU'VE COMMITTED THE SOLUTION TO THE FIRST ONE

  context 'with one parameter' do
    it 'returns an array of the requested size' do
      expected_result = %w(
        222
        212
        222
      )
      expect(Square.new(size: 2)).to eq(expected_result)
    end
  end

  context 'with a limit parameter on how "deep" the square is' do
    it 'returns an array of the requested size' do
      expected_result = %w(
        4444444
        4333334
        43   34
        43   34
        43   34
        4333334
        4444444
      )
      expect(Square.new(size: 4, limit: 2)).to eq(expected_result)
    end
  end

  context 'with a start character' do
    it 'starts the array with that character' do
      expected_result = %w(
        CCCCC
        CBBBC
        CBABC
        CBBBC
        CCCCC
      )
      expect(Square.new(start: 'a')).to eq(expected_result)
    end
  end
end

