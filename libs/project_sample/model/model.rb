#
# model
# @author tamiwa
#

#
# DB接続クライアントモジュール
#
module ModelModule
  # データベース情報
  DB_HOST = ""
  DB_NAME = ""
  DB_USERNAME = ""
  DB_PASSWORD = ""

  # 各種テーブル名
  HOGEHOGE_TABLE_NAME = "hogehoge_table"

  attr_accessor :client


  #
  # コンストラクタclient作成
  #
  def initialize
    super
    if @client.nil?
      @client = Mysql2::Client.new(:host => DB_HOST, :username => DB_USERNAME, :password => DB_PASSWORD, :database => DB_NAME, :reconnect => true)
    end

    return @client
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
    rescue => e
      @client = Mysql2::Client.new(:host => DB_HOST, :username => DB_USERNAME, :password => DB_PASSWORD, :database => DB_NAME, :reconnect => true)
      @client.query(query)
    end
  end

end
