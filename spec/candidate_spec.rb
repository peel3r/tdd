require 'Candidate'

describe Candidate do
  subject(:candidate) { described_class.new(5) }
  # it {is_expected.to respond_to( :write).with(1).argument }
  it 'tells a candidate to write a cv' do
    expect(candidate).to respond_to(:write).with(1).argument
  end

  it 'tells a candidate to send a cv' do
    expect(candidate).to respond_to(:send).with(1).argument
  end

  it 'does not allow sending when target reached' do
    5.times do
      candidate.send(:cv)
    end
    expect{candidate.send(:cv)}.to raise_error("Cannot send your Cv. Sent target reached")
  end
end
