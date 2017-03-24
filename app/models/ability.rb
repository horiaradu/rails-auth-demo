class Ability
  include CanCan::Ability

  def initialize(user)
    can :manage, Book, library: { memberships: { user_id: user.id } }

    can :manage, Library, memberships: { user_id: user.id }
  end
end
