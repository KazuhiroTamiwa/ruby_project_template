#
# hogehogeProvider
# @author tamiwa
#


#
# Providerクラス
#
class ProjectSample
  class HogehogeProvider
    include ModelModule

    #
    # DBへ登録
    #
    # @param [Object] hogehoge hogehoge
    #
    def inserter(hogehoge)
        # クエリの用意
        query = "INSERT INTO #{HOGEHOGE_TABLE_NAME} (key) VALUES ('#{hogehoge}');"

        # クエリの実行
        query_builder(query)

    end

  end
end
