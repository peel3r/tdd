class EmployerReporter
  def applied?
    potential_employers = ['BBC', 'New Employer']
    Array.include?(potential_employers.sample)
    # puts "xxxx x xx #{potential_employers.sample.inspect}"
  end
end