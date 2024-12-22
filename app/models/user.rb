class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :projects, foreign_key: 'created_by_id'
  has_many :tasks
  has_many :comments
  has_and_belongs_to_many :teams

  validates :first_name, presence: true
  validates :last_name, presence: true
end
