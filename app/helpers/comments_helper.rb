module CommentsHelper
  def comment_body comment
    "<div class='panel-body'><p>#{comment.body}</p><p>#{comment_time(comment.created_at)}</p></div>".html_safe
  end

  def comment_time timestamp
    timestamp.strftime("%d.%m")
  end
end
