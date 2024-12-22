class Project < ApplicationRecord
  belongs_to :user, foreign_key: 'created_by_id'
  has_many :tasks
  has_many :comments, as: :commentable
  has_many :attachments, as: :attachable

  validates :name, presence: true
  validates :description, presence: true
  validates :status, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
