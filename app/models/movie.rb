class Movie < ApplicationRecord
  self.table_name = "movies"
  self.primary_key = "tconst"

  # Association with TitleRating
  has_one :rating, primary_key: "tconst", foreign_key: "tconst"
end
