class User < ApplicationRecord
  extend FriendlyId
  friendly_id :username, use: :slugged
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  attr_writer :login

  has_one :profile

  def login
    @login || self.username || self.email
  end

  def created_time_formatted
    created_at.strftime("%b %-d, %Y")
  end

  def updated_time_formatted 
    updated_at.strftime("%b %-d, %Y")
  end

end
