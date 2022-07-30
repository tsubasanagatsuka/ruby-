# # 問題.1
# # 以下の配列に任意の値が存在するかどうか、そして何番目に存在するのか、検索するコードを作成しましょう。
# # 添字が0の要素、つまり以下の配列における「1」は「配列の0番目に存在する」と表現します。

# # 1
# # array=[1,3,5,6,9,10,13,20,26,31]
# # 任意の値が配列内に存在しない場合は、「値は配列内に存在しません」と表示し、
# # 存在する場合は、配列の何番目にあるかを表示してください。
# # ※本ドリルでは、配列の上限である32以上の値による検索は想定しないものとします。

# # 検索はバイナリーサーチ（2分割検索）を使用して行います。

# #  バイナリーサーチ
# # ソート済みのリストや配列に入ったデータ（同一の値はないものとする）に対する検索を行うときに用いられる手法です。まず、中央の値を確認し、検索したい値との大小関係を用いて、検索したい値が中央の値の右にあるか、左にあるかを判断します。それを繰り返し、片側には存在しないことを確かめながら検索していく方法です。

# # https://tech-master.s3.amazonaws.com/uploads/curriculums//353ef454a5c0be1064c8256f72998bac.png

# # 1回の処理で選択肢が半分になるので、処理速度の向上が期待できます。

# # 出力例：

# # 検索したい数字を入力してください
# # 5
# # 5は配列の2番目に存在します 

# # 検索したい数字を入力してください
# # 7
# # 7は配列内に存在しません
# # ヒント
# # まず.lengthメソッドを使用して配列の要素数を取得し、変数number_of_elementsとします。
# # binary_searchメソッド内で配列の要素数を半分にしたものを変数centerとしましょう。
# # while文を使用して、当てはまるまで計算を繰り返します。

# # 配列の中の数字が何番目にあるのかを確かめるものを作る
# # 1の添字は0
# # 配列ないの数字以外を入力した時は存在しないと表示させる
# # つまりif文でelse puts "存在しない"
# # バイナリーサーチとは？

def binary_search(array, right, target) #←binary_searchメソッド
  left = 0 #配列の一番左の添字
  while left <= right # 0 <= 10 左よりも右のが大きければtrue
    center = (left + right) / 2 #1週目には0 + 10が入る /2
    if array[center] == target #array[5 ←添字(五番目（数字は１０)] == target　例５
      return center # 呼び出されたメソッドの処理を終了する際に呼び出し元に返す つまり61行目のbinary_searchに返る　よってresultはcenterの値になる
    elsif array[center] < target # array[5(10)] < target 例　５
      left = center + 1
    else
      right = center - 1 # 10 = 5(10) -1 → right = 4 代入　2週目からrightは4になる
    end
  end
  return -1 
end

array=[1,3,5,6,9,10,13,20,26,31] #arrayに配列を代入

puts "検索したい数字を入力してください"
target = gets.to_i #ユーザーが入力したものが数値化されるもの
number_of_elements = array.length #lengthでarrayの長さを測ったものをnumber_of_elementsに入れる　要素数が入る　要素すうが10個なので10という数字が入る

result = binary_search(array, number_of_elemen ts, target) #([数字],要素数10,ユーザーが入力したもの)
#resultには４５行目のreturnが入る
if result == -1
  puts "#{target}は配列内に存在しません"
else
  puts "#{target}は配列の#{result}番目に存在します "
end

解説
1〜14行目で中央の値を見て、検索したい値との大小関係を用いて、検索したい値が中央の値の右にあるか、左にあるかを判断して、片側には存在しないことを確かめながら検索を行う処理を行っています。13行目のreturn -1は何も当てはまるときがないときに、最終的な返り値になります。

たとえば、targetとして31を入力した場合を考えてみましょう。そうすると2〜12行目で以下のように処理が進みます。


#1回目のループ
left=0
right=10
center=5
array[center]=10

#2回目のループ
left=6
right=10
center=8
array[center]=26

#3回目のループ
left=9
right=10
center=9
array[center]=31
そして6行目のreturn centerによって返り値が9となり、24〜28行目の処理で31は配列の9番目に存在しますと出力されます。

https://qiita.com/ryosuketter/items/2798b09330e7102b6cfe
参考qiita

while文を使う理由
条件がtrueになる限りループする
配列の長さに合わせてるのでwhile文を使っている
可変にできる　可変の反対は不変（固定）
添字を出せるメソッドがrubyにはある
二分探索するためにはまず長さを測る
lengthでarrayの長さを測る
