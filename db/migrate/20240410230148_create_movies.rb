class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.text :titletype
      t.text :primarytitle
      t.text :originaltitle
      t.boolean :isadult
      t.integer :startyear
      t.integer :endyear
      t.integer :runtimeminutes
      t.text :genres

      t.timestamps
    end
  end
end
