require 'ai_player'

describe AIPlayer do

  let(:random) { double(:rand => 2) }
  let(:subject) { described_class.new(random) }

  it 'makes a random choice' do
    expect(subject.choose_random).to eq('scissors')
  end
end