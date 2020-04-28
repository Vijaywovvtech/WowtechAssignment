class AddFavouriteShowsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :favourite_shows, :integer, array: :true, default: []
  end
end
