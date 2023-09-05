class CreateUserAssets < ActiveRecord::Migration[7.0]
  def change
    create_table :user_assets do |t|
      t.string :title
      t.integer :amount
      t.text :description

      t.timestamps
    end
  end
end
