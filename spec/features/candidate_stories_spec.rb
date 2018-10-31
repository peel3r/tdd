describe  "Candidate Stories" do
# As a candidate
# So candidate can write a cv to find a job
# instruct candidate to write a cv
it "so candidate can write a cv, tell candidate to write a cv" do
     candidate = Candidate.new(5)
     cv = Cv.new
     expect {candidate.write(cv)}.not_to raise_error
end
# As a candidate
# So candidate can send a cv to find a job
# Instruct candidate to  send a cv

  it "so candidate can send a cv, tell candidate to send a cv" do
    candidate = Candidate.new(5)
    cv = Cv.new
    expect { candidate.send(cv)}.not_to raise_error
  end

# As a candidate
# So that candidate can send only 5 cv at a time
# Candidate want to prevent sending cv when target reached

  it 'does not allow cv s to be sent when target reached' do
    candidate = Candidate.new(5)
    cv = Cv.new
    5.times do
      candidate.send(cv)
    end
    expect {candidate.send(cv)}.to raise_error("Cannot send your Cv. Sent target reached")
  end
end