class CreateSeries < ActiveRecord::Migration[5.1]
  def change
    create_table :series do |t|
      t.string :name
      t.string :creator
      t.string :category
      t.integer :year

      t.timestamps
    end
  end
end
