# 問題.1
# 以下のように、果物の名前と値段が入った配列があります。
# この配列を用いて、果物の名前とそれぞれの合計額が出力される
# コードを記述してください。

# fruits_price = [["apple", [200, 250, 220]], ["orange", [100, 120, 80]], ["melon", [1200, 1500]]]

# （出力）
# appleの合計金額は670円です
# orangeの合計金額は300円です
# melonの合計金額は2700円です

fruits_price = [["apple", [200, 250, 220]], ["orange", [100, 120, 80]], ["melon", [1200, 1500]]]

fruits_price.each do |fruit|
  sum = 0
  fruit[1].each do |price|
    sum += price
  end
  puts "#{fruit[0]}の合計金額は#{sum}円です"
end

模範解答
1
2
3
4
5
6
7
8
9
fruits_price = [["apple", [200, 250, 220]], ["orange", [100, 120, 80]], ["melon", [1200, 1500]]]

fruits_price.each do |fruit|
  sum = 0
  fruit[1].each do |price|
    sum += price
  end
  puts "#{fruit[0]}の合計金額は#{sum}円です"
end
解説
最初に、3行目でfruits_priceから["apple", [200, 250, 220]]という値を取り出し、変数fruitに代入します。その後4行目〜7行目で、fruitの1番目の値[200, 250, 220]から値を1つずつ取り出して、自己代入しながらsumを出力します。丁寧に見ると以下のようになります。


# 1回目
sum = 0
#sum += priceはsum = sum + priceと解釈できる
sum = 0 + 200
# 返り値
sum = 200

#2回目 
#sumは1回目の200という値が返されます
sum = 200
sum = 200 + 250
sum = 450

#3回目 
#sumは2回目の450という値が返されます
sum = 450
sum = 450 + 220
sum = 670
この結果、appleの合計金額は670円ですと出力されるようになります。この作業を残り2つorange、melonでも繰り返します。

トピックス：
多次元配列
多次元配列
多次元配列の問題を解いたので簡単ですがまとめてみます。

果物の名前と金額の二つの配列から要素を取り出す問題です。

fruit.rb
fruits_price = [["apple", [200, 250, 220]], ["orange", [100, 120, 80]], ["melon", [1200, 1500]]]

fruits_price.each do |fruit|
  sum = 0
  fruit[1].each do |price|
    sum += price
  end
  puts "#{fruit[0]}の合計金額は#{sum}円です"
end

>>出力結果は 「appleの合計金額は670円です」 ...全ての果物の名前と合計金額が出力されます。省略します。
わからないポイント:

最初の配列 |fruit| は何を取り出しているのか。
２番目の配列 |price| は何を取り出しているのか
fruit[1]とはなんなのか
最初の配列 |fruit| とはなにか？
変数fruits_priceには例によって果物の名前と配列「金額」のが入っていますので、そのまま代入されています。イメージとしては

fruit.rb
fruits_price = [["apple", [200, 250, 220]]　#以下省略
→ fruits_price =　apple,配列
次にeach文で|fruit|変数から要素を取り出しています。each do は配列の中身を全て取り出す処理を行います。現状のイメージとしては

fruit.rb
fruit　= [["apple", [200, 250, 220]]　#以下省略
→ fruit = apple,配列
→ fruit = fruit[0],fruit[1]　#配列で中身の要素が表現されます。
fruitに配列0,1として要素が代入されています。

２番目の配列 |price| とはなにか？
変数price(|price|)には例によって果物の名前と配列「金額」が入っているfruitの配列が入っています。イメージとしては

fruit.rb
price = [200, 250, 220]　#以下省略
→ price =　配列(fruit[1])
fruit[1]とはなんなのか(まとめ)
まとめます。

fruit.rb
fruits_price = [["apple", [200, 250, 220]]　
→ fruit = apple,配列

→ fruit = fruit[0],fruit[1]
price = [200, 250, 220]　#以下省略

→ price =　配列(fruit[1])

fruit[1] = price = [200,250,220](金額の配列)
fruit[1].each.do |price|ではprice変数に配列の要素（金額）を全て取り出しているということですね。