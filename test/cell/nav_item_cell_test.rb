require 'test_helper'

class NavItemCellTest < Minitest::Spec
  describe Application::Cell::NavItem do
    controller AlbumsController

    it 'renders cell' do
      cell(Application::Cell::NavItem, Album).()
    end
  end
end
