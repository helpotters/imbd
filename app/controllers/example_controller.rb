class ExampleController < ApplicationController
  def index
    @movies = Movie.includes(:rating).page params[:page]
  end
end
