class CreateSignatureRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :signature_requests do |t|
      t.integer :status
      t.decimal :idol_amount
      t.decimal :charity_amount
      t.decimal :birdsign_amount
      t.decimal :total
      t.integer :charity
      t.boolean :show_charity_amount
      t.integer :fan_id
      t.integer :idol_id

      t.timestamps
    end
  end
end
