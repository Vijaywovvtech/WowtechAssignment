desc "Rake Task to notify user regarding their favourite shows"
task notify_user: :environment do
	puts "Your Favourite show is going to start within 30 minutes"
	shows = Show.get_shows
	shows.each do |show|
		users = User.where("#{show.id.to_i} = ANY(favourite_shows)")
		users.each do |user|
			UserMailer.notification_email(show, user).deliver!
		end
	end
end