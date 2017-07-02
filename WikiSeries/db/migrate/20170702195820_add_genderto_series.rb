class AddGendertoSeries < ActiveRecord::Migration[5.1]
  def change
    add_column :series, :gender, :string
  end
end
