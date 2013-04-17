# If you open up the command prompt (I’m using a windows not a Mac) then 

#Microsoft Windows [Version 6.2.9200]
#(c) 2012 Microsoft Corporation. All rights reserved.

#C:\Users\Sedinirina>cd desktop

#C:\Users\Sedinirina\Desktop>cd Project3

#C:\Users\Sedinirina\Desktop\Project3>irb --simple-prompt
>> file = File.new('test.txt', 'w') # Here we are going to create a file that has Hello word in it, and this file is on write mode
#=> #<File:test.txt>
>> file.puts "Hello world"
#=> nil
>> file.close    # this file won’t close unless you close the file by using file.close
#=> nil
>> file = File.new('test.txt', 'r') # Here we are going to open the file in read and the append these words and the close it
#=> #<File:test.txt>
>> file.gets
#=> "Hello world\n"
>> file.close
#=> nil
>> file = File.new('test.txt','a')
#=> #<File:test.txt>
>> file << "It's going to be great day!"
#=> #<File:test.txt>
>> file.close
#=> nil
#>>

#4. Your script should create a new directory called “my_new_directory”

#C:\Users\Sedinirina\Desktop>cd sedy
# First, you have to go where you want to create the new directory

#C:\Users\Sedinirina\Desktop\sedy>irb --simple-prompt  
>> Dir.mkdir("my_new_directory")
#=> 0
#>>

#5. Your script should check to see if a file exists and if it does print “Yes! this file exists!”

if Dir["C:\Users\Sedinirina\Desktop\sedy\my_new_directory"]!= nil
  puts 'Good Job! The file exists!’
 else
  puts 'Sorry! There is no such directory'
end

#so the result will look like this :

#"Good Job the file exists!"
#=> nil
# And there is another way of knowing if the directory exists, by using File.exists?

#>> File.exists? File.expand_path('C:\Users\Sedinirina\Desktop\sedy')
#=> true

# >>>>>>>>>to name a file you just need to use File.rename(“oldfile.txt”,”newfile.rb”)
# And in this case, you are not supposed to be reading the file or append something or any kind of dealing inside the file but this way will work outside of the file , it means you use file.close :
>> file = File.new('test.txt', 'w') 
#=> #<File:test.txt>
>> file.puts "Hello world"
#=> nil
>> file.close    
#=> nil
>> file = File.new('test.txt', 'r') 
#=> #<File:test.txt>
>> file.gets
#=> "Hello world\n"
>> file.close
#=> nil
>> file = File.new('test.txt','a')
#=> #<File:test.txt>
>> file << "It's going to be great day!"
#=> #<File:test.txt>
>> file.close
#=> nil
>>File.rename(“test.txt”,”basic_io.rb”)
#=> 0
# So here if you look on the my_new_directory then you will see that the “test.txt” has been changed to “basic_io.rb”























