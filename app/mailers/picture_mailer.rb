class PictureMailer < ApplicationMailer
  def picture_mail(picture)
    @picture = picture
    mail to: "taiki780528@yahoo.co.jp", subject: "Posting confirmation"
  end
end
