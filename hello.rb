puts "Hello, world!"

#
# Hashes
#
require 'date'

sinkhole = {
    descripton: "sinkhole",
    image:'',
    coordinates:'',
    date_reported: Date.today
}

powerlines = {
    descripton: "sinkhole",
    image:'',
    coordinates:'',
    date_reported: Date.today.prev_day
}

debris = {
    descripton: "sinkhole",
    image:'',
    coordinates:'',
    date_reported: Date.today.prev_day.prev_day
}

puts sinkhole[:date_reported]
puts powerlines[:date_reported]
puts debris[:date_reported]

#
#Method
#

def humanized_days_ago(date_reported)
    num_days = (Date.today - date_reported)
    num_days.to_i
    if num_days == 0
        "Today"
    elsif num_days == 1
        "1 day ago"
    else     
    end
    
end

puts humanized_days_ago(sinkhole[:date_reported])
puts humanized_days_ago(powerlines[:date_reported])
puts humanized_days_ago(debris[:date_reported])

#
#Arry (aka list)
#

hazards = [sinkhole, powerlines, debris]
puts hazards[2][:descripton]

hazards.each do 
