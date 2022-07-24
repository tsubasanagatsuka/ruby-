# 問題.1
# 概要
# 本ドリル問題では、配列に格納された3つの数値の合計を算出するプログラムを実装します。

# 問題
# 以下の要件を満たすlone_sumメソッドを実装しましょう。

# 配列に格納された3つの数値の合計を出力する 
# ただし、同じ数値が2つ以上含まれている場合、その数値は合計する要素に含めない
# 雛形

def lone_sum(ary)
  array = ary
  ba = array.select {|val| array.count(val) == 1}
  ho = ba.inject(:+)
  if ho == nil #配列の中身が重複しているときはnilいう中身になるので　==nil にする
    p 0
  else
    p ho
  end
end

呼び出し例
lone_sum([3, 3])

# 例答え
array = [3,2,3]

sum_array = array.select{ |v| array.count(v) == 1 }
puts sum_array.inject(0){|v, item| v + item}

selectはtrue,false配列の中の要素を一つ一つ条件式に当てはめる
当てはまったものを配列の中に残す[||]の中で式展開できる
countは要素の数を数える
今回はselectの中でcountを使っているので [1,2,3]だったら1,1,1と返ってくる[1,3,3]だったら1,2,2と返ってくる

# 出力例
# lone_sum([1, 2, 3]) → 6
# lone_sum([3, 2, 3]) → 2
# lone_sum([3, 3, 3]) → 0

# まずは配列の中身を足した
# そこから同じ数字が二つ以上ある場合は合計値に含めない
# 配列操作？
# プログラム上で被っている数字を見極める
# どうやる？
# メソッド？
# 配列の中身を取り出すメソッド？
# カウントメソッド？
# 二つのメソッドを使う？
# 逆に重複していない要素をとりだす
# 重複した要素を取り出して足し算をする
# 同じ数字のみの場合0としてputsする


模範解答
ruby以外で式を作る時はこっちの回答を作るか
他の言語でも似たようなメソッドを探して使う

def lone_sum(ary)
  # 配列から、重複しない要素のみ取り出す
  uniq_nums = []
  ary.each do |num|#3,2,3
    count = 0 #+1
    ary.each do |i| #3,2,3
      if num == i #3 == 3 3 == 2 3 ==3
        count += 1
      end
    end
    if count < 2 #2より小さければtrue
      uniq_nums << num #６３行目でtrueになった周回した数字をnumに入れる　今回は２
    end
  end

  # uniq_nums配列内の合計
  sum = 0
  uniq_nums.each do |unique_num|
    sum += unique_num
  end
  puts sum
end

# 呼び出し例
lone_sum([1, 2, 3])
解説
3〜14行目で重複しない値のみ取り出す処理を、17〜20行目で重複しない値のみになった配列内の合計を求める処理を行っています。以下具体的に見てみましょう。

たとえば、lone_sum([3, 2, 3])でメソッドを呼び出した場合を考えてみましょう。

この場合、4行目で最初にnum=3となります。その後6行目でi=3, 2, 3となり、それぞれに対してnum=iとなったとき、つまり重複したときにcountが増えるようになっています。
そして、11行目では重複した値が1つのときだけ、uniq_nums配列に値を追加しています。num=3のときはcount=2となるので、uniq_nums配列に値は追加されません。
これを後2回繰り返した結果、uniq_nums配列には2だけが追加されます。

そして17行目以下でuniq_nums配列内の合計を求めます。
この場合はsum = sum + 2、つまりsum = 0 + 2となります。
その結果、合計は2と出力されます。