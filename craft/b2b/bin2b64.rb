#!ruby
# -*- coding: utf-8 -*-
# �Ώۃt�@�C����Ǎ��o�C�i���ŊJ���Apack('m')��Base64�ɂ��o�͐�ɏ�������
require 'pathname'
open(Pathname(ARGF.filename).sub_ext(".txt").to_s, "w").write([open(ARGF.filename, "rb").read].pack('m'))



=begin
# bin�t�@�C�������
#binmsg = open("a.msg", "rb")
# bin->base64�ɕϊ�
#while(bin = binmsg.read(4))
#  base64_text = binmsg.pack('i*')
#  
#end
# Base64�ȃe�L�X�g�t�@�C�����o��
open("result_b64.txt", "w") {|file|
  file.write([open("a.msg", "rb").read].pack('m'))
}
=end
#�������C�i�[�ɂ������Ǔǂ݂ɂ����ˁE�E�E
