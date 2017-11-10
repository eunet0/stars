class AddLinkToStars < ActiveRecord::Migration[5.0]
  def change
    add_column :stars, :link, :string
  end
end
