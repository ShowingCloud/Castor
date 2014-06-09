class CreateMobiles < ActiveRecord::Migration
  def change
    create_table :mobiles do |t|
      t.string :mobile

      t.timestamps
    end
  end
end
