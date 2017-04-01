class CreateNotices < ActiveRecord::Migration[5.0]
  def change
    create_table :notices do |t|
      t.string :user_id
      t.string :gallery_id
      t.text :body
      t.integer :mark

      t.timestamps
    end
  end
end
