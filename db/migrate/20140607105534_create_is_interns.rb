class CreateIsInterns < ActiveRecord::Migration
  def change
    create_table :is_interns do |t|
      t.boolean :is_intern

      t.timestamps
    end
  end
end
