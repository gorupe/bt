#!ruby
# -*- coding: utf-8 -*-
# �Ώۃt�@�C�����J���Aunpack('m')[0]�Ńo�C�i���ɂ��o�͐�ɏ�������
require 'pathname'
open(Pathname(ARGF.filename).sub_ext(".bin").to_s, "wb").write(File.read(ARGF.filename, :encoding => Encoding::UTF_8).unpack('m')[0])



=begin
# Base64�t�@�C�������
open("oauth.txt").each {|line|
  line�H
}
# base64->bin�ɕϊ�
# bin�ȃe�L�X�g�t�@�C�����o��
open("result.txt", "a+") {|file|
  file.write(#�Ȃ��� + "\n")
}
=end
