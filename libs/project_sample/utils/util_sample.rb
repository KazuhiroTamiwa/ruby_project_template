#
# utilサンプル
# @author tamiwa
#
require "rexml/document"
require 'active_support'
require 'active_support/core_ext'

#
# xmlファイルをパースする
#
class ProjectSample
  class UtilSample

    #
    # @param [String] path パス
    #
    # @return [Object] パースの結果(Hash)
    #
    def self.xml_parse(path)
      doc = REXML::Document.new(File.new(path))

      # Hashに変換
      hash = Hash.from_xml(doc.to_s)

      return hash
    end

  end
end
