class AddImageToSeries < ActiveRecord::Migration[5.1]
  def up
    add_attachment :series, :image
  end

  def down
    remove_attachment :series, :image
  end
end
