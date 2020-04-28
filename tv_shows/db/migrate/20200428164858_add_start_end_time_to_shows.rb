class AddStartEndTimeToShows < ActiveRecord::Migration
  def change
  	add_column :shows, :start_time, :timestamp
  	add_column :shows, :end_time, :timestamp
  end
end
