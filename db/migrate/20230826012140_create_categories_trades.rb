class CreateCategoriesTrades < ActiveRecord::Migration[7.0]
  def change
    create_table :categories_trades do |t|
      t.references :category, null: false, foregin_key: true
      t.references :trade, null: false, foregin_key: true
      
      t.timestamps
    end
  end
end
