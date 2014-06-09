class CreateUserVerifications < ActiveRecord::Migration
  def change
    create_table :user_verifications do |t|
      t.string :name
      t.date :birthday
      t.boolean :is_intern
      t.string :mobile
      t.boolean :gender
      t.string :email
      t.string :department
      t.string :position
      t.string :area
      t.string :subjection
      t.string :tel
      t.string :fax
      t.string :im
      t.string :id_card
      t.string :adress
      t.string :postcode

      t.timestamps
    end
  end
end
