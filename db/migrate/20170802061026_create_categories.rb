class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name, :default => 'no-category'

      t.timestamps  
    end
    Category.create(name: "no-category")
  end
end
