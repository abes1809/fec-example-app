require 'unirest'

while true 
  system "clear"

  puts "Enter a candidate name you would like to search: "
  candidate_name = gets.chomp 
  response = Unirest.get("http://localhost:3000/candidates?search=#{candidate_name}")
  candidates = response.body["results"] 

  candidates.each do |candidate|
    puts "=" * 50
    print candidate["name"]
    puts 
    puts "#{candidate["name"]} ran for #{candidate["office_full"]}"
    puts 
    puts 
    end

    puts "-" * 50
    puts "Press enter to continue or type 'q' to quit"
    input = gets.chomp
    if input == "q"
      exit 
    end  

  end 

