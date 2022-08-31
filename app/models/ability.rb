class Ability
  include CanCan::Ability

  def initialize(user)
      return unless user.present?
      can :read, :all
      can :manage, Post, user_id: user.id
      can :manage, Comment, user_id: user.id

      return unless user.admin?
      can :manage, :all
      end
  end
end
