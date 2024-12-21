class Project < ApplicationRecord
  belongs_to :user, foreign_key: 'created_by_id'
  has_many :tasks
  has_many :comments, as: :commentable
  has_many :attachments, as: :attachable
end
