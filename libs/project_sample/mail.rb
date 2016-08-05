#
# メール送信機能
# @author tamiwa
#


#
# メール送信クラス
#
class SendMail
  MAIL_ADDRESS = ""
  PASSWORD = ""

  #
  # エラー時メール送信機能
  #
  # @param [String] title タイトル
  # @param [String] error エラーメッセージ
  # @param [Strings] mail_to 送信先リスト
  #
  def self.send_message(title, error, mail_to)
    mail_to.each do |mail_address|
      mail = Mail.new

      options = { :address              => "smtp.gmail.com",
                  :port                 => 587,
                  :domain               => "smtp.gmail.com",
                  :user_name            => MAIL_ADDRESS,
                  :password             => PASSWORD,
                  :authentication       => :plain,
                  :enable_starttls_auto => true  }
      mail.charset = 'utf-8'
      mail.from MAIL_ADDRESS
      mail.to mail_address
      mail.subject title
      mail.body error
      mail.delivery_method(:smtp, options)
      mail.deliver
    end

  end
end
