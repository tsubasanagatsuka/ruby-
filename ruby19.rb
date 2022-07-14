# 問題.1
# 概要
# 本ドリルでは、特定の数字が存在するかどうかを判定するプログラムを実装します。

# 問題
# 以下の要件を満たすarray123メソッドを実装しましょう。

# 配列内に1,2,3が全て入っている場合は、「True」と出力すること
# 配列内に1,2,3の全てが入っていない場合は、「False」と出力すること
# 雛形

# def array123(nums)
#   # 処理を記述
# end

# # 呼び出し例
# array123([1, 1, 2, 3, 1])
# 出力例
# array123([1, 1, 2, 3, 1]) → True
# array123([1, 2, 4, ]) → False
# array123([1, 1, 2, 1, 4, 3]) → True

# ヒント
# include?メソッドを使用しましょう。

# include?メソッド
# include?メソッドは指定した値が、配列中に含まれているかを判定するメソッドです。指定した値が含まれている場合はtrueを、含まれていない場合はfalseを返り値として返します。


# array = ["foo", "bar"]
# puts array.include?("bar")
# #=> true
# puts array.include?("hoge")
# #=> false
# include?メソッドの詳細は公式リファレンスを確認しましょう。

# Arrayのinclude?メソッドを使用する場合
# Stringのinclude?メソッドを使用する場合

#1回目の解答　しかしこの解答ではターミナルに反応なし　include?の使い方が良くないのかそれとも問題文なのか？　
# def array123(nums)
#   puts array123.include?(123)
# end

# # # 呼び出し例
# array123([1, 1, 2, 3, 1])

# 今までの問題と見比べると｜｜や＆＆を使うのか？　 配列内に1,2,3が全て入っている場合は、「True」と出力すること　← １、２、３は分けるのか？

def array123(nums)
  if nums.include?(1) && nums.include?(2) && nums.include?(3)
    puts "True"
  else
    puts "False"
  end
end

array123([1, 1, 2, 3, 1])

# if文で＆＆を使って揃えばtrueにする式を作ってみた

include?は一つの要素しか取り出せない
なので&&を使用してあげて1,2,3を条件式に入れてあげる
