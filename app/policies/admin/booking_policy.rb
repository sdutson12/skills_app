class Admin::BookingPolicy < ApplicationPolicy
  def show?
    record.user == user
  end

  def index?
    record.user == user
  end

  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end
end
