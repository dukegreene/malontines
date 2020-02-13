class Malontine < ApplicationRecord
  validates_presence_of :title, :creator_id, :malone_id, :love_note_id
  validates_uniqueness_of :title
  # TODO: error message "Sorry, you've already created that combination before!"
  validates_uniqueness_of :malone_id, scope: [:love_note_id, :creator_id]
  belongs_to :creator, class_name: :User, optional: false
  belongs_to :malone
  belongs_to :love_note
  paginates_per 20

  def love_note_message
    self.love_note.message if self.love_note
  end

  def love_note_message=(message)
    if message && message.length > 0
      candy_style = message.upcase
      self.love_note = LoveNote.find_or_create_by(message: candy_style)
    end
  end

  def self.reverse_chrono_paginated(page)
    self.order('created_at DESC').page(page)
  end
end
