# gmai gem
require 'gmail'

USERNAME = "hogehoge@gmail.com"
# googleアカウント２段階認証後にアプリ用に発行したパスワード
PASSWORD = "XXX"

gmail = Gmail.new(USERNAME, PASSWORD)

message =
  gmail.generate_message do
    to "hogehoge@gmail.com"
    subject "題名"
    html_part do
      content_type "text/html; charset=UTF-8"
      body "こんばんは!"
    end
  end

  gmail.deliver(message)
  gmail.logout