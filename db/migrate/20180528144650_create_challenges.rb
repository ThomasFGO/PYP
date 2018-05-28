class CreateChallenges < ActiveRecord::Migration[5.2]
  def change
    create_table :challenges do |t|
      t.string :name
      t.date :start_at
      t.date :end_at

      t.timestamps
    end
  end
end
