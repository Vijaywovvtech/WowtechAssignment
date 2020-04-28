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
		Show.where("(start_time - now()) = interval '30 mins'")
	end

end
