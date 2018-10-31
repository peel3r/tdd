class Candidate
  def initialize target
    @target = target
    @cvs = []
  end

  def write cv
  end

  def send cv
    raise "Cannot send your Cv. Sent target reached" if target_reached?
    @cvs << cv
  end

  private

    def target_reached?
      @cvs.length >= @target
    end
end