class BookingPolicy < ApplicationPolicy
  def show?
    # record.user == user
    true
  end

  def create?
    record.user == user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
