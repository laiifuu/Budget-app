require 'rails_helper'

RSpec.describe Entity, type: :model do
  before(:each) do
    @user = User.create(name: 'Hayet', email: 'hayet@gmail.com', password: '1234567')
    @group = Group.create(user: @user, name: 'Food', icon: 'fa-solid fa-utensils fa-2x')
  end

  it 'Entity should be valid' do
    entity = Entity.create(author: @user, name: 'Chocolate', amount: 10)
    expect(entity).to be_valid
  end

  it 'Entity should not be valid' do
    entity = Entity.create(author: @user, name: '', amount: 10)
    expect(entity).to_not be_valid
    entity = Entity.create(author: @user, name: 'Chocolate')
    expect(entity).to_not be_valid
    entity = Entity.create(name: 'Chocolate', amount: 10)
    expect(entity).to_not be_valid
  end
end
