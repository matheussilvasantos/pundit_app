class SalesController < ApplicationController
  before_action :authenticate_user!

  def index
    authorize :sales, :index?
  end
end
