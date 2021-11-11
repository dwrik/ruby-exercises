def substrings(string, substrings)
  result = {}
  substrings.each do |substring|
    count = string.downcase.scan(substring.downcase).length
    result[substring] = count unless count == 0
  end
  result
end