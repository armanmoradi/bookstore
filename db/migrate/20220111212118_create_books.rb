class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :category_id
      t.integer :auther_id
      t.integer :publisher_id
      t.string :isbn
      t.string :year
      t.string :price
      t.string :buy
      t.text :exerpt
      t.string :format
      t.integer :pages

      t.timestamps
    end
  end
end
