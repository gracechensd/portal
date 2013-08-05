class Project < ActiveRecord::Base
  belongs_to :user
  validates :name, presence: true, length: { maximum: 64 }
  validates :user_id, presence: true
  validates :b_index, length: {is: 7}, allow_blank: false
end
