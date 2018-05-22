class ChangeTypeDateInCatches < ActiveRecord::Migration[5.2]
  def change
    remove_column :catches, :date, :string
    add_column :catches, :date, :date
  end
end
