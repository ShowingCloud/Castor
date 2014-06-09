class CreateIms < ActiveRecord::Migration
  def change
    create_table :ims do |t|
      t.string :im

      t.timestamps
    end
  end
end
