module Song::Contract
  class Create < Reform::Form
    feature Reform::Form::Dry

    property :title
    property :length

    validation do
      params do
        required(:title).filled
      end
    end
  end
end
