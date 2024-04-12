class ExampleController < ApplicationController
  def index
    @title_basics = Movie.includes(:rating).all
  end
end
