# 問題.1
# 今日の曜日を表示するコードをDateクラスを使用して記述してください。
# ただし、金曜日だった場合だけ以下のように表示の内容を変えてください。

# require "date"
# # 次に、Dateクラスを用いて「今日の曜日」を取得する場合は以下のように記述します。
# Date.today.wday  
# # wdayは曜日を0(日曜日)から6(土曜日)の整数で取得することができるDateクラスに用意されているメソッドです。

# require "date"

# day = Date.today.wday

# puts day

# これを実行すると、曜日に合わせた数字が出力されます。たとえば、木曜日だとすれば4が出力されることになります。

require "date"

day = Date.today.wday
days = ["日曜日", "月曜日", "火曜日", "水曜日", "木曜日", "金曜日", "土曜日"]

if day == 5
  puts "今日は#{days[day]}だ！！！"
else
  puts "今日は#{days[day]}"
end