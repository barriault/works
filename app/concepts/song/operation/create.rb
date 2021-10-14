module Song::Operation
  class Create < Trailblazer::Operation
    step Model(Song, :new)
    step Contract::Build(constant: Song::Contract::Create)
    step Contract::Validate()
    step Contract::Persist()
  end
end
