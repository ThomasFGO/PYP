class AddCoordinatesToCatches < ActiveRecord::Migration[5.2]
  def change
    add_column :catches, :latitude, :float
    add_column :catches, :longitude, :float
  end
end
