# 問題.1
# 概要
# 本ドリルでは、指定された範囲の数値によって処理が異なるプログラムを実装します。

# 問題
# 以下の要件を満たすparrot_troubleメソッドを実装しましょう。

# 最近、あなたはオウムを飼いはじめました。しかし、近隣から「夜にオウムの鳴き声がうるさい」と苦情がくるようになりました。あなたはこれをシステムで解決しようと考え、次のようなプログラムの要件を考えました。

# 第一引数にオウムが鳴く場合はtrueを指定し、鳴かないfalseを指定する
# 第二引数には時間を指定する（ただし、「分」は考えないものとする）
# 20時から翌朝7時までの間にオウムが鳴いた場合は「NG」と出力する（20時と7時は含まれない）
# 上記以外の場合は「OK」と出力する
# 雛形
# 1
# 2
# 3
# 4
# 5
# 6
def parrot_trouble(talking, hour)
  if talking && (hour < 7 || hour > 20) #オウムが鳴くかつ7時から20時までの間はtrueという条件式
    puts "NG" #21時から6時までの間に鳴くとNG
  else
    puts "OK" #7時から20時までの間に鳴けばOK
  end
end

# 呼び出し例
parrot_trouble(true, 8) # ここで何時に鳴くかを指定している　鳴く＝true 鳴かない=false 時間
出力例
# parrot_trouble(true, 6) → NG
# parrot_trouble(true, 7) → OK
# parrot_trouble(false, 6) → OK
# parrot_trouble(false, 7) → OK

# # ruby14の問題を参考に考えました
# # 演算子をしっかり使うということもしっかり頭に入れるべき問題　ちゃんと文章を読まないとだめ
# def police_trouble(a, b)
#   if (a && b) || (!a && !b)
#     puts "True"
#   else
#     puts "False"
#   end
# end

20-7に鳴くとfalse 
逆も考える　
20-7に鳴かないと？ A.true

21-6に鳴くとtrue
逆も考える
21-7に鳴かないと？ A.false
条件は二つ　鳴く　鳴かない　時間

しっかりと条件を広げてあげる