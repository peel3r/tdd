describe  "Candidate Stories" do
  let(:employer_reporter) {EmployerReporter.new}
  let(:candidate) {Candidate.new(5, employer_reporter)}
  let(:cv) {Cv.new}


  context 'when not applied' do
    before do
      allow(employer_reporter).to receive(:applied?).and_return false
    end
    # As a candidate
    # So candidate can write a cv to find a job
    # instruct candidate to write a cv
    it "so candidate can write a cv, tell candidate to write a cv" do
      expect {candidate.write(cv)}.not_to raise_error
    end

    # As a candidate
    # So candidate can send a cv to find a job
    # Instruct candidate to  send a cv

    it "so candidate can send a cv, tell candidate to send a cv" do
      expect { candidate.send(cv)}.not_to raise_error
    end
  end

  context 'when target reached' do
    # As a candidate
    # So that candidate can send only 5 cv at a time
    # Candidate want to prevent sending cv when target reached

    before do
      allow(employer_reporter).to receive(:applied?).and_return false
    end

    it 'does not allow cv s to be sent' do
      5.times do
        candidate.send(cv)
      end
      expect {candidate.send(cv)}.to raise_error("Cannot send your Cv. Sent target reached")
    end
  end

  context 'when applied' do

    before do
      allow(employer_reporter).to receive(:applied?).and_return true
    end
    it 'does not allow cv to be sent' do

      expect {candidate.send(cv)}.to raise_error 'Cannot send cv. You already applied to this employer '
    end

    it 'does not allow cv to be written' do

      expect {candidate.write(cv)}.to raise_error 'Cannot send cv. You already applied to this employer '
    end
  end
end