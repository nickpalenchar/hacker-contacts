require 'contact'
class Guide

  def initialize(path=nil)
  # locate the restaurant text file at path
    Contact.filepath = path
    if Contact.file_usable?
      puts "[guide.rb] using file `" + path + "`"
    elsif Contact.create_file
      puts "[guide.rb]: created new Contact File"
    else
      puts "Exiting.\n\n"
      exit!
    end
  end

  def launch!
  introduction
  # action loop
  #   what do you want to do (list, fine, add, quit)
  #   do that action 
  conclusion
  end

  def introduction
    puts "\n\n"
    puts "________________________________"
    puts "|    <<< Haxor Contacts >>>    |"
    puts "|------------------------------|"
    puts "|  Your contacts in the shell  |"
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  end

  def conclusion
    puts "Bye."
  end
end

