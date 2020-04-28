class Show < ActiveRecord::Base
	belongs_to :channel
	validates :name, uniqueness: true, presence: true

	def self.search(search)
		if search.present?
			Show.joins(:channel).where('shows.name ilike ? or channels.name ilike ?', search, search)
		else
			Show.all
		end
	end

	def self.get_shows
		Show.where("to_timestamp(start_time,'HH:MM') > now() - interval '30 mins'")
	end

end
