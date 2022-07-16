# 問題.1
# 正の整数を入力します。その整数が、
# 10の倍数（10,20,30...）からの差が2以内であるときはTrue
# それ以外はFalse
# と出力するメソッドを作りましょう。

# 出力例：

# def near_ten(num)
#   num1 = num % 10 #あまりがとれる
#   if num1 == 8 || num1 == 9 || num1 == 0 || num1 == 1 || num1 ==2
#     puts "true"
#   else
#     puts "false"
#   end
# end

省略形
def near_ten(num)
  num1 = num % 10
  if 3 <= num1 && num1 <= 7 # 3よりnumが大きく、numより7が大きく　trueであればfalseがputsされる
    puts "false"
  else
    puts "true"
  end
end

near_ten(3)
near_ten(17)
near_ten(0)

# 10の倍数から2以上離れてるかh慣れていないか

# near_ten(12)は10の倍数から2離れています
# どうやって2離れているかを出すか
# 2離れている事を数学的に出したい
# つまり12➗10をする　（=1余り２）
# あまりを出す（２）
# 12/10 (結果ではなく余り出したい時は％　12%10)
# どれだけ離れていればtrue,falseなのかを判断する

模範解答

def near_ten(num)
  quotient = num % 10
  if quotient <= 2 || quotient >= 8
    puts "True"
  else
    puts "False"
  end
end
「10の倍数からの差」を考えるためには、一の位の値に着目します。すなわち、一の位が「0,1,2,8,9」のどれかであれば「10の倍数からの差が2以内」と判断することができます。

したがって、変数quotientに一の位の値を代入し、quotient <= 2 || quotient >= 8で「0,1,2,8,9」のどれかに当てはまるかどうかを確認しています。