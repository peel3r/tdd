require 'employer_reporter'

class Candidate
  def initialize target, employer_reporter
    @target = target
    @cvs = []
    @employer_reporter = employer_reporter
  end

  def write cv
    raise 'Cannot send cv. You already applied to this employer ' if applied?
  end

  def send cv
    raise "Cannot send your Cv. Sent target reached" if target_reached?
    raise 'Cannot send cv. You already applied to this employer ' if applied?
    @cvs << cv
  end

  private

    def target_reached?
      @cvs.length >= @target
    end

  def applied?
     @employer_reporter.applied?
  end

end