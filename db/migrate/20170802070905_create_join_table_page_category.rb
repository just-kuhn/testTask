class CreateJoinTablePageCategory < ActiveRecord::Migration[5.0]
  def change
    create_join_table :pages, :categories do |t|
      t.index [:page_id, :category_id]
      t.index [:category_id, :page_id]
    end
  end
end
