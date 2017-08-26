class CreateTableTwits < ActiveRecord::Migration[5.1]
  def change
    create_table :twits do |t|
      t.text(:description)
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
