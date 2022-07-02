# 問題.1
# 概要
# 本ドリルでは、対象となる文字列から特定の文字列の数を算出し、その数を出力するプログラムを実装します。

# 問題
# 以下の要件を満たすcount_hiメソッドを実装しましょう。

# 対象となる文字列の中から、"hi"という特定の文字列の数を取得すること
# 上記で取得した数を出力すること
# 雛形

def count_hi(str)
  puts str.scan("hi").length
end

# 呼び出し例（引数には対象となる文字列を指定します）
count_hi('abc hi ho')
# 出力例：
# count_hi('abc hi ho') → 1
# count_hi('ABChi hi') → 2
# count_hi('hihi') → 2

# ヒント
# scanメソッドを使用しましょう。

# scanメソッド
# scanメソッドは、対象の要素から引数で指定した文字列を数え、配列として返すメソッドです。

# "foobarbazfoobarbaz".scan("ba")
# => ["ba", "ba", "ba", "ba"]
# scanメソッドの詳細は公式リファレンスを確認しましょう。

模範解答

def count_hi(str)
  puts str.scan("hi").length
end

# 呼び出し例（引数には対象となる文字列を指定します）
count_hi('abc hi ho')
解説
対象の文字列の中に"hi"という文字列がいくつあるか数える為、scanメソッドを使用します。scanメソッドは、「ヒント」で確認したとおり検索結果を配列として返します。

"foobarbazfoobarbaz".scan("ba")
=> ["ba", "ba", "ba", "ba"]
上記を踏まえて、今回の問題でのscanメソッドの役割を確認します。
1行目のcount_hiメソッドの仮引数strには対象の文字列が格納されているため、以下のように記述することで、”hi”という文字列の数だけ配列の要素を返すことができます。

def count_hi(str)
  str.scan("hi")
end
そして、その配列の中の要素の数をlengthメソッドで返し、putsメソッドで出力すれば完成です。

自己説明
今回の問題は文字列から特定の文字を抜き取り(scan)、抜き取った要素の数を数値として返す(.length)