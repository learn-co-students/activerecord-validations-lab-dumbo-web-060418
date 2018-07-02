class Post < ActiveRecord::Base
  validate :title_clickbaity?
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: ["Fiction", "Non-Fiction"]}

  def title_clickbaity?
    errors.add(:title, "is not clickbaity enough") unless title.to_s.include?("Won't Believe") || title.to_s.include?("Secret") || title.to_s.include?("Guess") || title.to_s.include?("Top 5")
  end

end
