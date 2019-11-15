class Note < ApplicationRecord
  acts_as_paranoid
  belongs_to :user

  def self.search(search)
    where("title LIKE ?", "%#{search}%") 
  end
end
