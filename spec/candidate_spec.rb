require 'Candidate'

describe Candidate do
  subject(:candidate) { described_class.new }
  # it {is_expected.to respond_to( :write).with(1).argument }
  it 'tells a candidate to write a cv' do
    expect(candidate).to respond_to(:write).with(1).argument
  end

  it 'tells a candidate to send a cv' do
    expect(candidate).to respond_to(:send).with(1).argument
  end
end
