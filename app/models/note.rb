class Note < ApplicationRecord
  belongs_to :user

  def self.search(user_id, search)
    if search
      where(:user_id => user_id).where(["title LIKE ?", "%#{search}%"])
    else
      where(:user_id => user_id)
    end
  end
end
