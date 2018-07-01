class Post < ActiveRecord::Base

  validates :title, presence: true
  validates :summary, length: { maximum: 250 }
  validates :content, length: { minimum: 250 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
  validate :clickbait

  def clickbait
    unless self.title =~ /(Guess)|(Won't Believe)|(Secret)|(Top \d+)/
      self.errors.add(:title, "Not clickbait-y enough!")
    end
  end

end
