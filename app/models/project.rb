class Project < ActiveRecord::Base
  belongs_to :user
  validates :name, presence: true, length: { maximum: 64 }
  validates :user_id, presence: true
end
