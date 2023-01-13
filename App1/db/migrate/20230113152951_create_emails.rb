class CreateEmails < ActiveRecord::Migration[5.2]
  def change
    create_table :emails do |t|
      t.string :body
      t.text :title

      t.timestamps
    end
  end
end
