class Candidate
  def initialize target
    @target = target
    @cvs = []
    @employers = ["Sky", "BBC", "Skyscanner", "On The Beach"]
  end

  def write cv
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
    potential_employers = ['BBC', 'New Employer']
    @employers.include?(potential_employers.sample)
    puts "xxxx x xx #{potential_employers.inspect}"
  end

end