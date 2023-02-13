require 'rails_helper'

RSpec.describe 'entities/index', type: :view do
  before(:each) do
    assign(:entities, [
             Entity.create!(
               name: 'Name',
               author_id: '',
               amount: 2
             ),
             Entity.create!(
               name: 'Name',
               author_id: '',
               amount: 2
             )
           ])
  end

  it 'renders a list of entities' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Name'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(''.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
  end
end
