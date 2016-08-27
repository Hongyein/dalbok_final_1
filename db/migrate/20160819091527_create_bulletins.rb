class CreateBulletins < ActiveRecord::Migration
  def change
    create_table :bulletins do |t|
      t.string :title
      t.text :description
      t.text :shortexplain
      t.integer :user_id
      
      t.timestamps null: false
    end
  end
end
