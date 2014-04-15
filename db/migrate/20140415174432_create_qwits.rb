class CreateQwits < ActiveRecord::Migration
  def change
    create_table :qwits do |t|
      t.string :post
      t.integer :user_id

      t.timestamps
    end
  end
end
