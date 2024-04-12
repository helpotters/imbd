class Rating < ApplicationRecord
  self.table_name = "ratings"
  self.primary_key = "tconst"

  # Association with TitleBasic
  belongs_to :movie, primary_key: "tconst", foreign_key: "tconst"
end
