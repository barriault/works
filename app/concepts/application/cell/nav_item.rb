module Application::Cell
  class NavItem < Trailblazer::Cell
    def nav_label
      model.model_name.human.pluralize
    end

    def nav_path
      polymorphic_path(model)
    end
  end
end
