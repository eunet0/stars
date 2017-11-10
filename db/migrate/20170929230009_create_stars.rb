class CreateStars < ActiveRecord::Migration[5.0]
  def change
    create_table :stars do |t|
      t.string :name
      t.text :bio
      t.string :image

      t.timestamps
    end
  end
end
