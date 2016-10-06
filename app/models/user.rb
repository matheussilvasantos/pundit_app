class User < ApplicationRecord
  enum role: [:directors, :sales, :user]
  after_initialize :set_default_role, :if => :new_record?

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable

  private

    def set_default_role
      self.role ||= :user
    end
end
