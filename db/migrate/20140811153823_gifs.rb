class Gifs < ActiveRecord::Migration
  def change
    create_table :gifs do |t|
      t.string :url, null: false
      t.string :title, null: false
    end
  end
end
