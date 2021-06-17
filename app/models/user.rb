class User < ApplicationRecord
  has_many :parks
  has_many :activities
  has_many :reviews
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def make_name
    self.email.split("@")[0].capitalize
  end
  
end
