require 'rspec'
require './square.rb'

describe Square do
  context 'with no params' do
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
end

