class AddDataToChannels < ActiveRecord::Migration
  def up
  	Channel.create(name: "Sony")
  	Channel.create(name: "NetFlix")
  end
end
