#
# サンプルプロジェクトクラス
# @author tamiwa
#
require 'bundler/setup'
Bundler.require
require 'yaml'


#
# 基本のクラス
#
class ProjectSample
  #
  # 指定されたkeyのvalueを取得する
  #
  # @param [String] key key
  #
  # @return [Object] value
  #
  def self.get_constant(key)
    YAML.load_file('libs/config.yml')[key]
  end

end


%w(
  model/model
  model/hogehoge_provider
  utils/util_sample
  hogehoge
  mail
).each { |m| require File.dirname(__FILE__) + '/project_sample/' + m }
