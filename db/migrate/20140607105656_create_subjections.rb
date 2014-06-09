class CreateSubjections < ActiveRecord::Migration
  def change
    create_table :subjections do |t|
      t.string :subjection

      t.timestamps
    end
  end
end
