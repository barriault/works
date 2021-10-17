require 'test_helper'

class NavigationCellTest < Minitest::Spec
  describe Application::Cell::Navigation do
    controller AlbumsController

    it 'renders avatar when user provided' do
      html = cell(Application::Cell::Navigation, nil,
                  context: { current_user: User.new(email: 'jeff@barriault.net') }).()

      expect(html.to_s).must_match 'Signed-in: jeff@barriault.net'
    end

    it 'renders SIGN IN otherwise' do
      html = cell(Application::Cell::Navigation, nil, context: { current_user: nil }).()

      expect(html.to_s).must_match 'Sign-In'
    end
  end
end