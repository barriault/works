class AlbumsController < ApplicationController

  def create
    run Album::Operation::Create do |ctx|
      return redirect_to @model
    end
    :new
  end

  def index
    run Album::Operation::Index do |ctx|
      render cell(Album::Cell::Albums, @model)
    end
  end

  def new
    run Album::Operation::New do |ctx|
      return @form
    end
  end
end
