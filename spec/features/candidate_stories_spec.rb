describe  "Candidate Stories" do
# As a candidate
# So I can find a job
# I want to write a cv
it "so candidate can write a cv, tell candidate to write a cv" do
     candidate = Candidate.new
     cv = Cv.new
     expect {candidate.write(cv)}.not_to raise_error
  end
end