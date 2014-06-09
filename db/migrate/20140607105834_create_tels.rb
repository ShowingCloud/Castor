class CreateTels < ActiveRecord::Migration
  def change
    create_table :tels do |t|
      t.string :tel

      t.timestamps
    end
  end
end
