class Ability
  include CanCan::Ability

  def initialize(user)
    can :manage, Book, library_id: user.library_id

    can :manage, Library, id: user.library_id
  end
end
