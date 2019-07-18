class BookingPolicy < ApplicationPolicy
  def index?
    record.user == user
  end

  def show?
    record.user == user
  end

  def create?
    record.user == user
  end

  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end
end
