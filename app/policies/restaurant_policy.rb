class RestaurantPolicy < ApplicationPolicy
  
  def show? 
    true
  end

  def destroy?
    record.user == user
  end

  def create? 
    true
  end

  def update?
    record.user == user
  end

  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all # show all restaurants
      # scope.where(user: user)  show only the restaurants of the user
    end
  end
end
