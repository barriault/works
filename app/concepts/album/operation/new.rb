module Album::Operation
  class New < Trailblazer::Operation
    step Model(Song, :new)
  end
end
