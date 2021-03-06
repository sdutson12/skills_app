class ReviewPolicy < ApplicationPolicy

  def new?
    true
  end

  def create?
    record.booking.user == user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
