class Rating < ApplicationRecord
  self.table_name = "ratings"

  belongs_to :movie
end
