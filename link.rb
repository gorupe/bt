require "net/http"
require "uri"

#���������O�̃e�L�X�g��ǂݍ���
file = $0.gsub("rb", "txt").split("/").pop

#�����ʃt�@�C����
resultfile = "result_" + file

File.readlines(file).each do |line|
  if /^http/ =~ line
    begin
      #URL�̎擾
      response = Net::HTTP.get_response(URI.parse(line))
      case response
        when Net::HTTPSuccess
          next
        else
          open(resultfile, "a+").write(line.chomp)
          open(resultfile, "a+").write(" " + response.code + "\n")
      end
    rescue
      open(resultfile, "a+").write(line)
    end
  end
end
