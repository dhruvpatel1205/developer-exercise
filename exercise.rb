class Exercise
  # Author: Dhruv Patel
  # Email - dhruvj1205@gmail.com
  def self.marklar(str)
    str.gsub(/\b([a-zA-Z]+)(\W*)\b/) do |match|
      word, punctuation = $1, $2
      if word.length > 4
        replacement = word[0] =~ /[A-Z]/ ? "Marklar" : "marklar"
        "#{replacement}#{punctuation}"
      else
        match
      end
    end
  end

  def self.even_fibonacci(nth)
    return 0 if nth < 1
    fib =[1,1]
    while fib.length < nth
      fib << fib[-1] + fib[-2]
    end
    fib.select(&:even?).sum
  end

end
