class CreateModels < ActiveRecord::Migration[5.0]
  def change
    create_table :models do |t|
      t.string :Page
      t.string :title
      t.text :body
      t.string :slug

      t.timestamps
    end
  end
end
