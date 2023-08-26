class CreateTrades < ActiveRecord::Migration[7.0]
  def change
    create_table :trades do |t|
      t.string :name
      t.integer :ammount

      t.references :author, references: :users, foregin_key: { to_table: :users }
      
      t.timestamps
    end
  end
end
