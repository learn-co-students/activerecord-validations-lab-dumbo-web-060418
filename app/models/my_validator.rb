class MyValidator < ActiveModel::Validator
  def validate(post)
    unless post.title.include?("Won't Believe") || post.title.include?("Secret") || post.title.include?("Top 5") || post.title.include?("Guess")
      post.errors[:title] << "Your post is not clickbaity enough!"
    end
  end
end
