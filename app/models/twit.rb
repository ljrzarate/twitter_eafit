class Twit < ApplicationRecord
  belongs_to :user
  validates :description, length: {minimum:20}
  validates_presence_of :user_id
  validates_presence_of :description
end
