class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title, null: false
      t.integer :year, null: false
      t.string :director, null: false

      t.timestamps
    end
  end
end
