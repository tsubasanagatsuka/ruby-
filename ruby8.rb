
# 問題
# 以下の要件を満たすcheck_nameメソッドを実装しましょう。

# 名前を入力すると「登録が完了しました」という文字列を出力すること
# 名前の中にピリオド(.)がある場合は、「 "!エラー!記号は登録できません"」という文字列を出力すること
# 名前の中に空白（半角のみ）がある場合は、「 "!エラー!空白は登録できません"」という文字列を出力すること
# ※今回空白に関しては、半角スペースのみを考えることとします。

# 雛形

# def check_name(str) 
#   # 処理を記述
# end

# puts "登録したい名前を入力してください(例)YamadaTaro"
# str = gets
# check_name(str) 
# 出力例
# YamadaTaro → 登録が完了しました
# Yamada.Taro→!エラー!記号は登録できません
# Yamada Taro → !エラー!空白は登録できません

# ヒント
# include?メソッドを使用しましょう。

# include?メソッド
# include?メソッドは、指定した値が配列や文字列内に含まれているかを判定するメソッドです。指定した値が含まれている場合はtrueを、含まれていない場合はfalseを返り値として返します。

# 【例】

# array = ["foo", "bar"]
# puts array.include?("bar")
# # => true
# puts array.include?("hoge")
# # => false
# include?メソッドの詳細は公式リファレンスを確認しましょう。

# Arrayのinclude?メソッドを使用する場合
# Stringのinclude?メソッドを使用する場合

def check_name(str) 
  if str.include?(".")
    puts "!エラー!記号は登録できません"
  elsif str.include?(" ")
    puts "!エラー!空白は登録できません"
  else
    puts "登録が完了しました"
  end
end

puts "登録したい名前を入力してください(例)YamadaTaro"
str = gets
check_name(str) 

役割
43行目のstr.include(".")の役割はユーザーが打つものに(".")の文字列のピリオドが含まれているとき
ピリオドを弾く（エラーにする）
45行目も同じ役割

実行
まず$ ruby ruby8.rbを実行
52行目のputsが走る
ユーザーが名前を打つ
53行目でgetsメソッドでユーザーが入力した値を文字列にし取得する
strにgetsを代入
54行目のcheck_name(str)が42行目に行き
43行目でstrが代入されその技のinclude?で(".")が打たれた時
44行目でputsが走る
45行目も同じ内容で走る(elsifなのは分岐が三つあるから)
もし43,45行目をスルーできたら48行目のputsが走る。

つまり("."),(" ")これら二つが出力された時trueになっているということ？
43,45行目以外の文字列をfalseにし、48行目のputsを走らせた？



模範解答
def check_name(str) 
  if str.include?(".")
    puts "!エラー!記号は登録できません"
  elsif str.include?(" ")
    puts "!エラー!空白は登録できません"
  else
    puts "登録が完了しました"
  end
end
puts "登録したい名前を入力してください(例)YamadaTaro"
str = gets
check_name(str) 
解説
1行目から9行目でcheck_nameメソッドを定義し、その定義したcheck_nameメソッドを13行目で呼び出しています。この際、引数にはgetsメソッドで入力された文字列を渡しています。

check_nameメソッドでは、「ピリオドや空白（半角スペース）がない場合は登録を行い、ピリオドや空白がある場合はエラーを出す」という条件分岐を行うためにif文を使用しています。
2行目から8行目にわたるif文による条件分岐では、1行目の仮引数strで受け取った文字列に対してinclude?メソッドを使用し、”.”(ピリオド)と
” ”(半角スペース)がないかを判断しています。

注意点として、if文は条件が当てはまった時点で処理が終了します。
そのため、「ピリオドや空白があるかどうか」という条件式を先に記述しましょう。