class PostMailer < ApplicationMailer
  def post_mail(post)
    @post_mail = post
    mail to: @post_mail.user.email, subject: "新しく投稿しました"
  end
end
