require 'rails_helper'

RSpec.describe 'expenses/show', type: :view do
  before(:each) do
    assign(:expense, Expense.create!(
                       group_id: '',
                       entity_id: ''
                     ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
