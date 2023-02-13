require 'rails_helper'

RSpec.describe 'entities/show', type: :view do
  before(:each) do
    assign(:entity, Entity.create!(
                      name: 'Name',
                      author_id: '',
                      amount: 2
                    ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
  end
end
