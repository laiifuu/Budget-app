require 'rails_helper'

RSpec.describe 'entities/edit', type: :view do
  let(:entity) do
    Entity.create!(
      name: 'MyString',
      author_id: '',
      amount: 1
    )
  end

  before(:each) do
    assign(:entity, entity)
  end

  it 'renders the edit entity form' do
    render

    assert_select 'form[action=?][method=?]', entity_path(entity), 'post' do
      assert_select 'input[name=?]', 'entity[name]'

      assert_select 'input[name=?]', 'entity[author_id]'

      assert_select 'input[name=?]', 'entity[amount]'
    end
  end
end
