class AddCategoryToStars < ActiveRecord::Migration[5.0]
  def change
    add_reference :stars, :category, foreign_key: true
  end
end
