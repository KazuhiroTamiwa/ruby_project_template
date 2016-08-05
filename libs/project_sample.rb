#
# クロールのクラス
# @author tamiwa
#
require "mail"
require 'mysql2'


#
# 基本のクラス
#
class ProjectSample
  VERSION = "1.0"

end


%w(
  model/model
  model/hogehoge_provider
  utils/util_sample
  hogehoge
  mail
).each{|m| require File.dirname(__FILE__) + '/project_sample/' + m }
