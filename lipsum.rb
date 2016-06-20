#!/usr/bin/ruby

require 'erb'

type = ARGV[0]
paragraph_num = ARGV[1].to_i
if paragraph_num == 0
  paragraph_num = 1
end
generated = []
i = 0

if type.downcase == "hipster"
  while paragraph_num > i
    generated.push("Pabst chartreuse selfies, YOLO kogi normcore franzen pop-up messenger bag. Mustache street art neutra flexitarian, DIY cred direct trade butcher flannel pinterest whatever food truck roof party. Try-hard hella affogato umami occupy, schlitz tattooed PBR&B austin kombucha. Tofu swag seitan bushwick dreamcatcher gentrify, four loko aesthetic wayfarers biodiesel. Viral echo park freegan cliche. Cred mlkshk selvage, williamsburg you probably haven't heard of them banh mi swag kale chips VHS. YOLO intelligentsia cardigan selvage. ")
    i += 1
  end
elsif type.downcase == "notlorem"
  while paragraph_num > i
    generated.push("We are County Council Trading Standards Approved as part of the Buy With Confidence scheme and all of our vehicles are HPI checked. So you know that your car is genuinely available for sale, doesn’t have any outstanding finance on it and that we are a reputable dealer. We also verify the mileage on all of the cars that we are selling and ensure that they are all sold with long MOTs and road tax. ")
    i += 1
  end
elsif type.downcase == "fillerama"
  while paragraph_num > i
    generated.push ("I love this planet! I've got wealth, fame, and access to the depths of sleaze that those things bring. And then the battle's not so bad? Now what? Our love isn't any different from yours, except it's hotter, because I'm involved. ")
    i += 1
  end
else
  return abort "I'm sorry, #{type} is not choose a valid ispum type, please try again and choose either 'Hipster', 'Notlorem' or 'Fillerama'."
end


new_file = File.open("#{type.to_s.downcase}.html", "w+")
new_file << ERB.new(File.read("index.html.erb")).result(binding)
new_file.close
