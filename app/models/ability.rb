class Ability
  include CanCan::Ability

  def initialize(user)
    can :manage, Book do |book|
      book.library_id == user.library_id && (book.name.blank? || book.name.first.downcase <= 'f')
    end

    can :manage, Library, id: user.library_id
  end
end
