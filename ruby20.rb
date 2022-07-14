# 問題.1
# 概要
# 本ドリルでは、指定された2つの真偽値によって処理が異なるプログラムを実装します。

# 問題
# Aさんは普段土日が休みの仕事に就いており、休みの日は遅くまで寝ていたいと考えています。
# そこで、Aさんのために「その日が遅くまで寝ていられるかどうか」を判断する、sleep_inメソッドを実装しましょう。

# 第一引数の値では「平日かどうか」、第二引数の値では「休暇かどうか」をtrueまたはfalseを用いて以下のように表します。

# 第一引数がtrue（平日である）または、第二引数がtrue（休暇である）の場合はtrueと出力する
# 第一引数がfalse（平日でない）または、第二引数がtrue（休暇である）の場合はtrueと出力する
# 第一引数がtrue（平日である）または、第二引数がfalse（休暇でない）の場合はfalseと出力する
# 第一引数がfalse（平日でない）または、第二引数がfalse（休暇でない）の場合はtrueと出力する
# 雛形

# def sleep_in(is_weekday, is_vacation)
#   if is_weekday && is_vacation # 11行目
#     puts "true"
#   elsif !is_weekday && is_vacation # 12行目
#     puts "true"
#   elsif is_weekday && !is_vacation #13行目
#     puts "false"
#   elsif !is_weekday && !is_vacation #14行目
#     puts "true"
#   end
# end
↓
省略
# def sleep_in(is_weekday, is_vacation)
#   if is_weekday && is_vacation || !is_weekday && !is_vacation || !is_weekday && is_vacation
#     puts "true"
#   elsif is_weekday && !is_vacation
#     puts "false"
#   end
# end
↓
省略
def sleep_in(is_weekday, is_vacation)
  if !is_weekday || is_vacation
    puts "true"
  else
    puts "false"
  end
end

# 呼び出し例
sleep_in(true, true)
# # 出力例
# sleep_in(false, false) → true
# sleep_in(true, false) → false
# sleep_in(false, true) → true

#def parrot_trouble(talking, hour)
# if talking && (hour < 7 || hour > 20) #オウムが鳴くかつ7時から20時までの間はtrueという条件式
#   puts "NG" #21時から6時までの間に鳴くとNG
# else
#   puts "OK" #7時から20時までの間に鳴けばOK
# end
# end

模範解答


def sleep_in(is_weekday, is_vacation)
 if (is_weekday != true) || (is_vacation == true)
  #!=なのでis_weekdayがtrueであった場合　falseを返す　
  # 例：(is_weekday != true) = false
  #sleep_in(false)
  #になる 
  puts true
 else
   puts false
 end
end

# 呼び出し例
sleep_in(false, false)
解説
今回は、第一引数、第二引数にそれぞれtrueもしくはfalseを渡すメソッドを作ることを想定します。

第一引数には、ある日が「平日である」場合はtrue、「平日ではない」場合はfalseを渡します。
第二引数には、ある日が「休暇である」場合はtrue、「休暇ではない」場合はfalseを渡します。

この2つの引数から「平日ではない」もしくは「平日だが休暇である」場合はtrue、「平日であり、休暇でもない」場合はfalseを返すメソッドを作成します。
条件分岐を実装するために、if文を使用します。

要件から、第一引数がfalseつまり「平日ではない」場合は、trueを返します。「〜ではない」場合にtrueを返すために、今回は否定の演算子!=を使用します。

2
(is_weekday != true) 
A != Bは「AとBが等しくないとき」にtrueを返します。
したがって、is_weekday != trueと記述することで「平日ではない」場合にtrue を返すことができます。
また、is_weekday == falseと記述しても同等の意味となります。

条件式の「平日かどうかまたは休暇かどうか」の「または」を定義するためには、演算子||を使用し下記のように記述します。

2
(is_weekday != true) || (is_vacation == true)
「平日であり、休暇でもない」場合は、elseを使用しシンプルに記述しましょう。

