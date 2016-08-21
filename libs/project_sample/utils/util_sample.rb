#
# utilサンプル
# @author tamiwa
#
require 'rexml/document'
require 'active_support'
require 'active_support/core_ext'


class ProjectSample
  #
  # xmlファイルをパースする
  #
  class UtilSample

    #
    # @param [String] path パス
    #
    # @return [Object] パースの結果(Hash)
    #
    def self.xml_parse(path)
      doc = REXML::Document.new(File.new(path))

      # Hashに変換
      Hash.from_xml(doc.to_s)
    end

  end
end
