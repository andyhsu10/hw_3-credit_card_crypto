def validate_checksum(number)
  nums_a = number.to_s.chars.map(&:to_i)

  # TODO: use the integers in nums_a to validate its last check digit
  sum = 0
  nums_a.reverse.each_with_index do |num, i|
    if(i % 2 == 0)
      sum += num
    else
      num *= 2
      if(num >= 10)
        num -= 9
      end
      sum += num
    end
  end

  sum
end

ans = validate_checksum(374842548357378)
puts ans