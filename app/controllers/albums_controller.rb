class AlbumsController < ApplicationController

  def create
    run Album::Operation::Create do |ctx|
      return redirect_to @model
    end
    :new
  end

  def index
    run Album::Operation::Index do |ctx|
      render html: cell(Album::Cell::Records, @model,
                        context: { current_user: User.new(email: 'jeff@barriault.net') },
                        layout: Layout::Cell::Application)
    end
  end

  def new
    run Album::Operation::New do |ctx|
      render cell(Album::Cell::New, @form)
    end
  end
end
