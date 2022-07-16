# FizzBuzz問題
# 非常に有名なプログラミングの問題です。1〜100までの数字をターミナルに出力してください。ただし、「3の倍数」のときは数字の代わりに文字列でFizzと、「5の倍数」のときはBuzz、3と5の倍数である「15の倍数」のときはFizzBuzzと出力してください。

# 作ってもらうプログラムのひな形は以下です。


# def fizz_buzz
#   if 3 == true
#     puts "Fizz"
#   end
#   if 5 == true
#     puts
# end

# fizz_buzz
# ヒント
# ① 問題文で与えられている仕様を整理すると以下のようになります

# 数字の1~100を出力する
# 値が3の倍数のときだけ、"Fizz"という出力に置き換える
# 値が5の倍数のときだけ、"Buzz"という出力に置き換える
# 値が3と5の倍数のときだけ、"FizzBuzz"という出力に置き換える
# ②「〇〇の倍数」を導き出す時は剰余演算子を用いましょう

# ③条件を指定して繰り返し処理をする場合は、whileというメソッドを使いましょう

# 1. 1~100までの数字を出力
# 2. 3の倍数の時だけ、"Fizz"という出力にする
# 3. 5の倍数の時だけ、"Buzz"という出力にする

# 1回目の答え
# i = 1
# while i <= 100
#   puts i
#   i += 1
#   if i == 3
#     puts "Fizz"
#   end
#   if i == 5
#     puts "Buzz"
#   end
# end

# num = 1
# while (num <= 100) do
#   if num % 3 == 0
#     #3の倍数とは、数字を3で割りき切れる数字なので「%3」
#     puts "Fizz"
#   elsif num % 5 == 0
#     puts "Buzz"
#   else
#     puts num
#   end
#   num = num + 1
# end


# 模範解答
# question1.rb

def fizz_buzz
  num = 1
  while num <= 100 do
    if num % 15 == 0
      puts "FizzBuzz"
    elsif num % 3 == 0
      puts "Fizz"
    elsif num % 5 == 0
      puts "Buzz"
    else
      puts num
    end

    num = num + 1
  end
end

fizz_buzz
# 解説
# この問題は条件分岐と条件の組み合わせを利用し、実装します。その実装の流れの一例を紹介します。

# まずは、1〜100までの数字をターミナルに出力するためのプログラムを書きます。

# question1.rb
 
# def fizz_buzz
#   num = 1
#   while num <= 100 do
#     puts num

#     num = num + 1
#   end
# end

# fizz_buzz
# 続いて、「3の倍数」のときは数字の代わりに文字列でFizzと、「5の倍数」のときはBuzzと出力するようにします。

# question1.rb

# def fizz_buzz
#   num = 1
#   while num <= 100 do
#     if num % 3 == 0    # 3の倍数のとき
#       puts "Fizz"
#     elsif num % 5 == 0    # 5の倍数のとき
#       puts "Buzz"
#     else    # それ以外のとき
#       puts num
#     end

#     num = num + 1
#   end
# end

# fizz_buzz
# そしてここに「15の倍数（3と5の倍数）」の時についての条件式を追加します。しかし、このまま下に追加してしまうと上記4行目の「3の倍数であるか」または6行目の「5の倍数であるか」という条件式が真になり、FizzまたはBuzzと表示されてしまいます。

# したがって、if文の最初に「15の倍数」のときはFizzBuzzと出力する条件を追加します。

# question1.rb

# def fizz_buzz
#   num = 1
#   while (num <= 100) do
#     if num % 15 == 0    # 15の倍数のとき
#       puts "FizzBuzz"
#     elsif (num % 3) == 0    # 3の倍数のとき
#       puts "Fizz"
#     elsif (num % 5) == 0    # 5の倍数のとき
#       puts "Buzz"
#     else    # それ以外のとき
#       puts num
#     end

#     num = num + 1
#   end
# end

# fizz_buzz
# 別解としては、「15の倍数であるとき」の条件式をnum % 15 == 0からnum % 3 == 0 && num % 5 == 0のように置き換えることができます。