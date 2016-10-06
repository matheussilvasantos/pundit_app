class SalesPolicy < Struct.new(:user, :sales)
  def index?
    user.sales? || user.directors?
  end
end
