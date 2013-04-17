file = File.new("makes_models.csv", "w")
#<File:makes_models.csv>
file.puts "Make, Model"

file.puts "Chevrolet, Malibu"

file.puts "Ford, Mustang"

file.puts "Ford, Taurus"

file.print "Chevrolet, Cobalt"

file.close



file = File.open("makes_models.csv", "r")
 while line = file.gets
   next if file.lineno == 1
   line = line.split(",")
   puts "Make : #{line[0]} -- Model: #{line[1]}"
 end

line_num=0
File.open("makes_models.csv","r").each do |line|
 puts " processed #{line_num += 1} Lines"
end
 
File.size("makes_models.csv") # I m lost here I need help

