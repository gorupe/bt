# 環境依存の設定を取得する
path = "db.txt"
env = File.open(path).readline.chomp if File.exist?(path)
if env == "db"
  require './db.rb'
else
  require './web.rb'
end

run Sinatra::Application
