class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.string :sex, length: 1, null:false
      t.string :name, null:false
      t.string :country, null: false
      t.integer :age, null:false
      t.integer :iq, null:false
    end
  end
end
