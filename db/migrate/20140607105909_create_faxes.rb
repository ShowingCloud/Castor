class CreateFaxes < ActiveRecord::Migration
  def change
    create_table :faxes do |t|
      t.string :fax

      t.timestamps
    end
  end
end
