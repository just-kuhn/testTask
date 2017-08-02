class AddSlugToCategories < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :slug, :string
    add_index :categories, :slug, unique: true
    Category.create(name: "no-category")
  end
end
