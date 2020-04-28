class AddDataToShows < ActiveRecord::Migration
  def up
  	Show.create(name: "KBC", start_time: "10:00", end_time: "11:00", channel_id: 1)
  	Show.create(name: "Adalat", start_time: "11:00", end_time: "12:00", channel_id: 1)
  	Show.create(name: "XYZ", start_time: "09:00", end_time: "10:00", channel_id: 1)
  	Show.create(name: "Games OF Thrones", start_time: "10:00", end_time: "11:00", channel_id: 2)
  	Show.create(name: "Inception", start_time: "08:00", end_time: "09:00", channel_id: 2)
  	Show.create(name: "Ice Age", start_time: "07:00", end_time: "08:00", channel_id: 2)
  end
end
