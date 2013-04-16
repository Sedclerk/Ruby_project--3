file = File.new('makes_models.csv', 'w')
#<File:makes_models.csv>
file.puts "Make, Model"
nil
file.puts "Chevrolet, Malibu"
nil
file.puts "Ford, Mustang"
nil
file.puts "Ford, Taurus"
nil
file.print "Chevrolet, Cobalt\n"
file.close
nil


file = File.open("makes_models.csv", "r")

 while line = file.gets
   next if file.lineno == 1
   line = line.split(",")
   puts "Make : #{line[0]} -- Model: #{line[1]}"
 end

line_num=0
File.open("make_models.csv", "r").each do |line|
 puts " processed #{line_num += 1} Lines"
end
 
File.size("make_models.csv") # I m lost here I need help

