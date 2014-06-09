class CreateAdresses < ActiveRecord::Migration
  def change
    create_table :adresses do |t|
      t.string :adress

      t.timestamps
    end
  end
end
