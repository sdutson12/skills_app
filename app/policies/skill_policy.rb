class SkillPolicy < ApplicationPolicy
  def show?
    true
  end

  def create?
    true
  end

  def search?
    true
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
