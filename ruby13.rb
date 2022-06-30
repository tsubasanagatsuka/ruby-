# 問題.1
# 概要
# 本ドリルでは、対象となる文字列から任意の文字を削除したのち、残った文字列を出力するプログラムを実装します。

# 問題
# 以下の要件を満たすmissing_charメソッドを実装しましょう。

# 対象となる文字列からn番目の文字を削除すること
# 削除された文字以外の文字列を出力すること
# 雛形

# def missing_char(str, n)
#   # 処理を記述
# end


# # 呼び出し例（1つ目の引数には対象となる文字列を、2つ目の引数には対象となる文字列から何番目の文字を削除するのかを指定しましょう）
# missing_char('kitten', 1)
# 出力例：
# missing_char('kitten', 1) → 'itten'
# missing_char('kitten', 2) → 'ktten'
# missing_char('kitten', 4) → 'kiten'

# ヒント
# slice!メソッドを使用しましょう。

#  slice!メソッド
# slice!メソッドは、配列や文字列から指定した要素を削除し、削除した後の要素を返すメソッドです。末尾にエクスクラメーションマーク(!)のつくメソッドを破壊的メソッドといいます。これはもとの配列や文字列を変化させるメソッドです。

# string = "abcdefg"
# string.slice!(2)

# puts string
# #=> "abdefg"
# # 2番目の要素のcが取り除かれている
# slice!メソッドの詳細は公式ドキュメントを確認しましょう。

def missing_char(str, n)
  str.slice!(n - 1)
  puts str
end

string = "string"
string.slice!(2)

puts string

模範解答

def missing_char(str, n)
  str.slice!(n - 1)
  puts str
end

# 呼び出し例
missing_char('kitten', 1)
解説
任意の文字に対してn番目の文字を消すために、文字列自体から取得した値を取り除く、slice!メソッドを使用します。
sliceメソッドは文字列自体の形を変化させることはできないため、エクスクラメーション(!)を付けたslice!メソッドに変更しています。

このslice!メソッドはmissing_charメソッド内で処理を行います。
missing_charメソッドの引数strには入力した文字列、nは何番目の文字列を消すのか指示する数字を入れる仕様になっています。

1
def missing_char(str, n)
例えば、呼び出し元がmissing_char('kitten', 1)であれば、strには'kitten'が入り、nには1が入るということです。

そして、slice!メソッドにnから1を引いた数を引数にしています。
なぜ1を引くのかというと、文字列の順番を指定する際も、配列と同じように先頭の文字列
は0からカウントされるためです。
よって、下記のように記述することでnから1を引いた数字に該当する文字列をstrから削除することができます。

