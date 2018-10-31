class Candidate
  def initialize target
    @target = target
    @number_of_sent_cv = 0
  end

  def write cv
  end

  def send cv
    raise "Cannot send your Cv. Sent target reached" if @number_of_sent_cv >= @target
    @number_of_sent_cv += 1

  end
end