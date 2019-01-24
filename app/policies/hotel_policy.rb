class HotelPolicy < ApplicationPolicy
  
  attr_reader :user, :hotel

  def initialize(user, hotel)
    @user = user
    @hotel = hotel
  end

  def index?
    @user.role == 'owner'
  end

  def edit?
    @user.id == @hotel.user_id && @user.role == 'owner'
  end

  def new?
    @user.role == 'owner'
  end

  def create?
    @user.role == 'owner'
  end

  def update?
    @user.id == @hotel.user_id && @user.role == 'owner'
  end

  def destroy?
    @user.id == @hotel.user_id && @user.role == 'owner'
  end

  class Scope < Scope
    def resolve
      scope
    end
  end

end
