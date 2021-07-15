class CreateSales < ActiveRecord::Migration[6.1]
  def change
    create_table :sales do |t|
      t.text :buyer
      t.text :description
      t.decimal :unit_price
      t.decimal :amount
      t.text :address
      t.string :provider

      t.timestamps
    end
  end
end
