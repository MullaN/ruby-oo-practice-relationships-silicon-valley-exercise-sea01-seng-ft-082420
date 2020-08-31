require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

s1 = Startup.new("Best Brand", "Mr. Best", "clothing")
s2 = Startup.new("Give Us Money", "Mr. Krabs", "finance")
vc1 = VentureCapitalist.new("Mr. Investor", 1000000000)
vc2 = VentureCapitalist.new("Small Investor", 100000)

fr1 = FundingRound.new(s1, vc1, "Angel", 500000)

s1.sign_contract(vc2, "Series 1", 100.00)
vc1.offer_contract(s1, "Series 2", 1000000.00)
vc1.offer_contract(s2, "Angel", 10000000.00)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line