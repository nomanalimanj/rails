class CreateChats < ActiveRecord::Migration[5.2]
  def change
    create_table :chats do |t|
      t.string :title
      t.string :body
      t.string :username

      t.timestamps
    end
  end
end
