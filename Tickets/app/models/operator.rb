class Operator < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :rememberable, :trackable, :validatable,
         :timeoutable, :registerable

  has_many :tickets, inverse_of: :operator, dependent: :destroy
end


