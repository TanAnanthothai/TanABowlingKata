# require 'sinatra'
# require 'timezone'
# require 'CSV'
# require 'rambling-trie'


# get '/hi' do

# 	# studentsData_csv = CSV.read('data.csv', headers:true)
# 	data = CSV.read('time_zone.csv', :headers=>true)
# 	$timeZoneName = data["timezone"]
# 	ary = $timeZoneName


# 	 # if $timeZoneName.find?("Europe/Andorra") #=> true
#   	 if $timeZoneName.find{ |x| x == 'Europe/Andorra' }.any?
#   		"ip exists"
# 	else
#   		"ip  doesn\'t exist"
#   		"#{hello}"
# 	end

# 	item = "Europe/Andorra"

# 	# }

# 	# zone_list = Timezone::Zone.list
# 	# Timezone::Configure.begin do |zone_list|
#  #  		hello = zone_list.replace "America/Chicago", with: "Chicago"
# 	# end
# 	# "#{hello}"


# end

# get '/form' do  
# 	 erb :form
# end

# post '/form' do
# 	 "You said '#{params[:message]}'"
# 	 city = params[:message]
# 	 timezone = Timezone::Zone.new :zone => city
# 	 show = timezone.time Time.now
# 	 "#{show}"
# end