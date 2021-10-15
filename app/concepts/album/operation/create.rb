module Album::Operation
  class Create < Trailblazer::Operation
    step Model(Album, :new)
    step Contract::Build(constant: Album::Contract::Create)
    step Contract::Validate()
    step Contract::Persist()
  end
end