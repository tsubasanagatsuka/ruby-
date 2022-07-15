# 問題.1
# ECサイトのポイント付与サービスを考えます。
# 購入金額が999円以下の場合、3%のポイント
# 購入金額が1000円以上の場合、5%のポイント
# このように付与されるポイントを出力するメソッドを作りましょう。

# ただし誕生日の場合はポイントが5倍になります。
# 誕生日の場合はtrue, 誕生日でない場合はfalseで表します。
# また、小数点以下をすべてのポイント計算が終わったあとに切り捨てましょう。

# ヒント：
# 小数点の切り捨ては、.floorメソッドを用います。

# irb(main):001:0> 3.1.floor
# => 3
# irb(main):002:0> 3.9.floor
# => 3
# 呼び出し方：
# calculate_points(amount, is_birthday)

# 出力例：
# calculate_points(500, false) → ポイントは15点です
# calculate_points(2000, false) → ポイントは100点です
# calculate_points(3000, true) → ポイントは750点です

# 1回目の解答
# def calculate_points(a, b)
#   if a <= 999 || b == true # amount = a にして９９９より小さければというのと、b = birthdayにしてtrueと　＝＝にした時という士気を書いて行き詰まった 
#     amo = a 
#     puts "ポイントは#{amo}点です"
#   end
# end
# calculate_points(amount, is_birthday)

模範解答
def calculate_points(amount, is_birthday)
  if amount <= 999
    point = amount * 0.03 #999円以下の値段なら0.０３かける
  else
    point = amount * 0.05
  end
  if is_birthday #birthdayはamountと別にif文にする　
    point = point * 5 # point = pointというのはamountのポイントに５倍するため
  end
  puts "ポイントは#{point.floor}点です"# floorは小数点切り捨ての技
end

calculate_points(500, true)

解説
まず、購入金額が999円以下なのかまたは1000円以上なのかを判断し、2~6行目で処理しています。
そして、購入金額に対して0.03または0.05をかけて、ポイント数を計算して変数pointに代入しています。

その後に、is_birthdayがtrueの場合すなわち誕生日の場合は、直前で定義した変数pointに5をかける処理を行います。

最後に、point.floorとしてポイントの小数点以下を切り捨て、獲得したポイント数を出力しています。

別解としては、条件式をamount <= 999からamount < 1000に変える方法などがあります。