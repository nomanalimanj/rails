class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.text :custom_id

      t.timestamps
    end
  end
end
