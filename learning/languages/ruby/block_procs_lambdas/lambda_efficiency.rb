to_euros = lambda { |n| n * 0.095}
to_rupiah = lambda { |n| n * 3.25 }


def convert(number, currency_lambda)
  currency_lambda.call(number) if number.is_a?(Numeric)
end 


p convert(1000, to_euros)
p convert(2000, to_rupiah)
p [300, 500].map(&to_euros)
  