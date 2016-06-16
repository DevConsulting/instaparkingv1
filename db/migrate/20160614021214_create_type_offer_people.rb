class CreateTypeOfferPeople < ActiveRecord::Migration
  def change
    create_table :type_offer_people do |t|
      t.string :nom_type_offer
      t.timestamps null: false
    end
  end
end
