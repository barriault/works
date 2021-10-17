module Application::Cell
  class Header < Trailblazer::Cell
    def show
      content_tag(:h1) do
        model
      end
    end
  end
end
