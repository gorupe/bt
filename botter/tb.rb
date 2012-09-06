#!ruby
# -*- coding: utf-8 -*-
require 'twitter'

# 認証設定
lineArray = Array.new()
File.readlines("oauth.txt").each do |line|
  lineArray.push line
end

Twitter.configure do |c|
  c.consumer_key = lineArray[0].chomp
  c.consumer_secret = lineArray[1].chomp
  c.oauth_token = lineArray[2].chomp
  c.oauth_token_secret = lineArray[3].chomp
end

# ランダムに一行取得
def getRandomOneline(path)
  filelinecount = File.open(path).read.count("\n") + 1
  oneline = File.open(path).readlines[rand(filelinecount)].chomp

  return oneline
end

# 処理をランダムに切り替える
if rand(10) == 1 
  place = getRandomOneline("list_place.txt")
  tweet = "そうだ。#{place}行こう"
else
  tweet = getRandomOneline("list.txt")
end
Twitter.update(tweet)
