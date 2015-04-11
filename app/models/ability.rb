class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    can :read, User

    can :manage, :all if user.root?
  end
end