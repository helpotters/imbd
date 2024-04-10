class CreateRatings < ActiveRecord::Migration[7.1]
  def change
    create_table :ratings do |t|
      t.decimal :averagerating
      t.integer :numvotes

      t.timestamps
    end
  end
end
