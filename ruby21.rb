# 問題.1
# 二桁以上の整数を入力すると、十の位と一の位の数字の足し算、十の位と一の位の数字の掛け算をそれぞれ行い、最後に2つの結果を足し合わせて出力するプログラムをRubyで作成してください。

# ヒント
# ・入力にはgetsメソッドを利用しましょう。数値型に変換することを忘れないようにしましょう。
# ・ある整数について、整数を10で割った計算結果の余りが1の位、整数を10で割ったものを更に10で割った計算結果の余りが10の位となります。

# ターミナルでの入力例

# sample.rb
# 1
# 2
# 3
# 4
# 5
# 6
# > 二桁の整数を入力してください
# > 15

# # 1 + 5 と 1 × 5 をそれぞれ計算

# > 足し算結果と掛け算結果の合計値は11です

# input = gets.chomp #開業しないためにchomp
# puts input

puts "二桁の数字を入力してください"
input = gets.to_i # 数値に変換
a = input % 10 # 計算結果としてあまりが欲しい時は%を書く
b = input / 10 % 10
sum = a + b # ＋　はsun
multi = a * b # * はmulti
puts "足し算結果と掛け算結果の合計値は#{sum + multi}です"

↓
実務ではこの書き方に書き直す

模範解答
def addition(a, b)
  a + b
end

def multiplication(a,b)
  a * b
end

def slice_num(num)
  # 10の位
  tens_place = (num / 10) % 10
  # 1の位
  ones_place = num % 10
  return tens_place, ones_place #,で区切ればreturn値を複数returnできる
end

puts "二桁の整数を入力してください"
input = gets.to_i
X, Y = slice_num(input)
add_result = addition(X, Y)
multiple_result = multiplication(X, Y)
puts "足し算結果と掛け算結果の合計値は#{add_result + multiple_result}です"

（解説）
ある整数について、任意の桁の数字を取り出す手順は、以下の通りです。
①取り出したい数字の桁数で割る
② ①の結果をさらに10で割った、そのあまりが任意の桁の数字

Rubyの性質上、整数同士（integer型）の計算だと返り値は整数になるので、小数点以下は切り捨てられます。

今回slice_numメソッドでは、上記のルールを利用して10の位と1の位を取得して、その返り値をX,Yという変数に代入しています。

また、変数を定義する際に、カンマで区切ることによって、同時に複数の変数を定義することができます。
今回は、X, Y に10の位、1の位を同時に代入しています。

最後にその結果を足して合計値を出力しています。