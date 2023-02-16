class Ability
  include CanCan::Ability

  def initialize(user)
    can :create, Group
    can :create, Entity
    can :create, Expense
    can :read, Entity, author_id: user.id
    can :read, Group, user_id: user.id
  end
end
