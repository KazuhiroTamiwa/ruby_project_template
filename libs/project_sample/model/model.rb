#
# model
# @author tamiwa
#

#
# DB接続クライアントモジュール
#
module ModelModule

  attr_accessor :client


  #
  # コンストラクタclient作成
  #
  def initialize
    super
    if @client.nil?
      @client = Mysql2::Client.new(host: ProjectSample.get_constant('db_host'),
                                   username: ProjectSample.get_constant('db_username'),
                                   password: ProjectSample.get_constant('db_password'),
                                   database: ProjectSample.get_constant('db_name'),
                                   reconnect: true)
    end
  end


  #
  # clientのclose
  #
  def client_closer
    @client.close
  end


  #
  # クエリービルダー
  # @param [String] query クエリ文
  #
  def query_builder(query)
    begin
      @client.query(query)
    rescue
      @client = Mysql2::Client.new(host: ProjectSample.get_constant('db_host'),
                                   username: ProjectSample.get_constant('db_username'),
                                   password: ProjectSample.get_constant('db_password'),
                                   database: ProjectSample.get_constant('db_name'),
                                   reconnect: true)
      @client.query(query)
    end
  end

end
