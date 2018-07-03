class Post < ActiveRecord::Base
  validates :title, presence: true
  validate :title_is_valid
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction)}

  def title_is_valid

    arr = ["Won't Believe", "Secret", "Top [number]", "Guess"]
    new_arr = []
    if !title.nil?
      arr.each do |phrase|
        new_arr << title.include?(phrase)
      end

      if !new_arr.include?(true)
        errors.add(:title, "must be clickbait")
      end
    end
  end

end
