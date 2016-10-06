class SalePolicy
  attr_reader :user, :model

  def initliaze(user, model)
    @user  = user
    @model = model
  end

  def index?
    @user.sales?
  end
end
