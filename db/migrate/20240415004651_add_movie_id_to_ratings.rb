class AddMovieIdToRatings < ActiveRecord::Migration[7.1]
  def change
    add_reference :ratings, :movie, null: false, foreign_key: true
  end
end
