# 問題
# 以下の仕様を満たすメソッドnumを作成しましょう。

# メソッドの実引数として「1以上の正の整数」を3つ用意し、それぞれを仮引数a,b,c としてnumメソッド内で使用する
# 第一引数と第二引数は足し算をし、変数abに代入する
# 第三引数が3以下の場合は変数abを第三引数の値で割り、結果を出力する
# 第三引数が4以上の場合は変数abを第三引数の値で掛け、結果を出力する
# ※小数点以下の出力は考慮しなくてかまいません。

# 雛形

def num(a, b, c)
  ab = a + b #第一引数と第二引数は足し算をし、変数abに代入する
  if c <= 3 #より小さいか等しい」比較演算子 3より等しいか小さければ割り算に、大きければ掛け算に
    puts ab / c
  else
    puts ab * c
  end
end

# 呼び出し例
num(1,5,3) 
num(1,5,5)
# 出力例
# num(1,5,3) → 2
# num(1,5,5) → 30

解説
ab = a + bで第一引数aと第二引数bを足し合わせています。
そして、第三引数cが3以下なのか否かをc <= 3として比較し、trueの場合は変数acをcで割る処理をしています。

一方、第三引数cが4以上の場合はc <= 3がfalseの場合であると一意に決まるため、elseの場合は変数abにcをかける処理をしています。
