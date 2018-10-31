describe  "Candidate Stories" do
# As a candidate
# So candidate can write a cv to find a job
# instruct candidate to write a cv
it "so candidate can write a cv, tell candidate to write a cv" do
     candidate = Candidate.new
     cv = Cv.new
     expect {candidate.write(cv)}.not_to raise_error
end
# As a candidate
# So candidate can send a cv to find a job
# Instruct candidate to  send a cv

  it "so candidate can send a cv, tell candidate to send a cv" do
    candidate = Candidate.new
    cv = Cv.new
    expect { candidate.send(cv)}.not_to raise_error
  end
end