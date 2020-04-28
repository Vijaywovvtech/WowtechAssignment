namespace :my_namespace do
  desc "Rake Task to notify user regarding their favourite shows"
  task notify_user: :environment do
  	puts "Your Favourite show is going to start within 30 minutes"
  	shows = Show.get_shows
  	shows.each do |show|
  		puts show.name
  		puts show.channel.name
  		puts show.start_time - show.end_time
  	end
  end

end
