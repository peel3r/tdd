require 'employer_reporter'

describe EmployerReporter do
  subject(:employer_reporter) {described_class.new}

  describe '#applied?' do
    it 'can be: not yet applied' do
      allow(Array).to receive(:include?).and_return false
      expect(employer_reporter.applied?).to be false
    end

    it 'can be: already applied' do
      allow(Array).to receive(:include?).and_return true
      expect(employer_reporter.applied?).to be true
    end
  end

end