class CreateCatches < ActiveRecord::Migration[5.2]
  def change
    create_table :catches do |t|
      t.references :specie, foreign_key: true
      t.string :photo
      t.integer :size
      t.float :weight
      t.string :date
      t.references :technic, foreign_key: true
      t.references :user, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
