class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      
      t.string  :options
      t.string  :bank_account
      t.string  :phone
      t.integer :post_id
      t.integer :user_id
      
      t.timestamps null: false
    end
  end
end
