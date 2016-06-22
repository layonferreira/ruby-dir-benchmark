require "benchmark"
time = []
5.times do
  result = Benchmark.realtime { 800000.times do Dir['/tmp'] end }
  puts result
  time << result
end
average = time.inject{ |sum, el| sum + el }.to_f / time.size

puts "average of: #{average}"
