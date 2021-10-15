class SongsController < ApplicationController

  def create
    run Operation::Song::Create do |ctx|
      return redirect_to @model
    end
    :new
  end

  def new
    run Operation::Song::New do |ctx|
      return @form
    end
  end
end
