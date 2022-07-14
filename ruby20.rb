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