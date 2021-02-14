class CreateMysteries < ActiveRecord::Migration[6.0]
  def change
    create_table :mysteries do |t|
      t.string :mystery_img
      t.string :genre
      t.string :answer
      t.string :answer_format

      t.timestamps
    end
  end
end
