class CreateCeries < ActiveRecord::Migration[7.0]
  def change
    create_table :ceries do |t|
      t.string :name
      t.string :synopsis
      t.string :director

      t.timestamps
    end
  end
end
