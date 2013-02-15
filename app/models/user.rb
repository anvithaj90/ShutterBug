class User < ActiveRecord::Base
  attr_accessible :email, :name
  has_many :blogs, dependent: :destroy
  validates :name,  presence: true, length: { maximum: 50 }

end
