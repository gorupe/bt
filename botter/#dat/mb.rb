#!ruby
# -*- coding: utf-8 -*-
require 'twitter'
require './betweenhour.rb'


# �F�ؐݒ�
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

=begin
# �����_���Ɉ�s�擾
def getRandomOneline(path)
  filelinecount = File.open(path).read.count("\n") + 1
  oneline = File.open(path).readlines[rand(filelinecount)].chomp

  return oneline
end

# ����̎��ԑт͔������Ȃ�
VerifySleeping = BetweenHour.new
if (!VerifySleeping.isBetweenHour(0, 23, Time.now.hour))
  # �����������_���ɐ؂�ւ���
  if rand(10) == 1 
    place = getRandomOneline("list_place.txt")
    tweet = "�������B#{place}�s����"
  else
    tweet = getRandomOneline("list.txt")
  end
end
=end

tweet = "test"
puts tweet
#Twitter.update(tweet)
