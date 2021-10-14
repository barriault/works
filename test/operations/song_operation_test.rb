require "test_helper"

class SongOperationTest < Minitest::Spec
  describe Song::Operation::Create do
    it 'create persists' do
      result = Song::Operation::Create.wtf?({ name: "I'll Sleep When I'm Dead" })

      assert result.success?
    end
  end

end