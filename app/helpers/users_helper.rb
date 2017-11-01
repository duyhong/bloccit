module UsersHelper
  def no_posts_or_comments?
    if current_user.posts.empty? && current_user.comments.empty?
      "#{current_user.name} has not submitted any posts and comments yet."
    elsif current_user.posts.empty?
      "#{current_user.name} has not submitted any posts yet."
    elsif current_user.comments.empty?
      "#{current_user.name} has not submitted any comments yet."
    end
  end
end
