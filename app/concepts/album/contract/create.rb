module Album::Contract
  class Create < Reform::Form
    feature Reform::Form::Dry
    property :album do
      property :name

      validation do
        params { required(:name).filled }
      end
    end
  end
end
