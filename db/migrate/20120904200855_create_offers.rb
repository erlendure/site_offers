class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :company
      t.string :heading
      t.integer :price
      t.integer :discount
      t.date :expire_date
      t.string :city
      t.string :street
      t.string :zip
      t.string :state
      t.string :phone
      t.string :terms
      t.string :details
      t.boolean :featured

      t.timestamps
    end
  end
end
