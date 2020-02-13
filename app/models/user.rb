class User < ApplicationRecord
  has_secure_password
  validates_presence_of :username
  validates_uniqueness_of :username

  has_many :malontines, foreign_key: :creator_id
  has_many :malones, through: :malontines
  has_many :love_notes, through: :malontines

  def same_as?(user)
    self.id == user.id
  end

  def nav_title
    "#{username.titleize} ❤️'s Malontines!"
  end

  def ordered_malontines
    malontines.order("created_at DESC")
  end
end
