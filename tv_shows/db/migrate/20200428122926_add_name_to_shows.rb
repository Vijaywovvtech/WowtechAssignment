class AddNameToShows < ActiveRecord::Migration
  def change
    add_column :shows, :name, :string
    add_column :shows, :timing, :timestamp
    add_column :shows, :channel_id, :integer
  end
end
