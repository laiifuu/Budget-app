require 'rails_helper'

RSpec.describe User, type: :model do
  it 'User should be valid' do
    user = User.create(name: 'Hayet', email: 'helloo@gmail.com', password: '1234567')
    expect(user).to be_valid
  end

  it 'User should be invalid' do
    user = User.create(name: '', email: 'helloo@gmail.com', password: '1234567')
    expect(user).to_not be_valid
    user = User.create(name: 'Hayet', email: '', password: '1234567')
    expect(user).to_not be_valid
    user = User.create(name: 'Hayet', email: 'helloo@gmail.com', password: '12345')
    expect(user).to_not be_valid
  end
end
