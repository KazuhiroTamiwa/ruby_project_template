#
# hogehogeProvider
# @author tamiwa
#

class ProjectSample
  #
  # hogehoge Providerクラス
  #
  class HogehogeProvider
    include ModelModule

    #
    # コンストラクタ
    #
    def initialize
      super
      @hogehoge_table_name = ProjectSample.get_constant('hogehoge_table_name')
    end

    #
    # DBへ登録
    #
    # @param [Object] hogehoge hogehoge
    #
    def insert(hogehoge)
      # クエリの用意
      query = "INSERT INTO #{@hogehoge_table_name} (key) VALUES ('#{hogehoge}');"

      # クエリの実行
      query_builder(query)

    end

  end
end
