require 'test_helper'

class SongOperationTest < Minitest::Spec
  describe Song::Operation::Create do
    it 'create persists' do
      result = Song::Operation::Create.wtf?(params: { album: { name: 'Testing' }, title: 'Test', length: 10 })
      model = result[:model]

      assert model.persisted?
      assert result.success?
    end
  end

end