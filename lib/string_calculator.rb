class StringCalculator
  def self.add(str)
    if str.empty?
      0
    else
      str.split(/[,'\\n']/).inject(0) do |sum, str|
        sum+str.to_i
      end
    end
  end
end

