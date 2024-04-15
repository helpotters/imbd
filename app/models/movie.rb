class Movie < ApplicationRecord
  self.table_name = "movies"

  # Association with TitleRating
  has_one :rating, dependent: :destroy
end
