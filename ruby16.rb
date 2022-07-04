# 問題.1
# 任意の文字列に"code"が、左から何文字目に出てくるかを返し、その数を出力するメソッドを作りましょう。

# 出力例：
# count_code("codexxcode") → 1
# count_code("aaacodebbb") → 4
# count_code("cozexxcode") → 7

# ヒント: indexメソッドを使用しましょう
#  index
# indexメソッドは、文字列や配列の中に指定した文字列が含まれていた場合、その文字列の開始位置を整数の値で返します。

# indexメソッドの詳細は公式リファレンスを確認しましょう。

# str.index(検索したい文字列, [検索を開始する位置])

def count_code(str)
  puts str.index("code", 0 ) + 1
end

# count_code("codexxcode")
# count_code("aaacodebbb")
# count_code("cozexxcode")

模範解答

def count_code(str)
  puts str.index("code", 0) + 1
end

解説
indexメソッドは文字列の先頭を0から数えた数字を返すため、+1をしています。

また、文字列の先頭から検索を開始する場合、第二引数は省略が可能です。
そのため、下記のようにコードを書き換えることが可能です。

def count_code(str)
  puts (str.index("code") + 1)
end

自己解説
問題文では一番左のことを1として数える
これは人間のことなの中で１が最初だから
ただコンピューター側では0が最初なので+1をしてあげる

indexメソッドでcodeの順番を数えてあげることによって0という返り値が返ってくる