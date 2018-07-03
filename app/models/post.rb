class Post < ActiveRecord::Base

  include ActiveModel::Validations

  # All posts have a title

  validates :title, presence: true

  # Post content is at least 250 characters long

  validates :content, length: {minimum: 250}

  # Post summary is a maximum of 250 characters

  validates :summary, length: {maximum: 250}

  #Post category is either Fiction or Non-Fiction

  validates :category, inclusion: {in: %w(Fiction Non-Fiction)}

  # validate :isClickbait?
  #
  # def isClickbait?
  #
  #   phrase1 = "Won't Believe"
  #   phrase2 = "Secret"
  #   phrase3 = "Top"
  #   phrase4 = "Guess"
  #
  #   phrases = [phrase1,phrase2,phrase3,phrase4]
  #
  #   phrases.each do |bait|
  #     if title.include? bait
  #         title == true
  #     end
  #   end
  #  errors.add(:title, "Must include clickbait.")
  # end

end
