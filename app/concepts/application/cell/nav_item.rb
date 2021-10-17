module Application::Cell
  class NavItem < Trailblazer::Cell

    private

    def active?
      return 'nav-item active' if nav_label.eql?(controller.class.name.split('::').first)

      return 'nav-item active' if "#{nav_label}Controller".eql?(controller.class.name.split('::').first)

      'nav-item'
    end

    def nav_label
      model.model_name.human.pluralize
    end

    def nav_path
      polymorphic_path(model)
    end
  end
end
