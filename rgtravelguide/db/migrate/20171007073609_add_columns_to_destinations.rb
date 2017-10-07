class AddColumnsToDestinations < ActiveRecord::Migration
  def change
    add_column :destinations, :comment, :text
    add_column :destinations, :rating, :integer
  end
end
