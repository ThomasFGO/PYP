class AddPseudoAndPhotoToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :pseudo, :string
    add_column :users, :photo, :string
  end

end
