# 問題.1
# 概要
# 本ドリル問題では、任意の数字が配列の中の何番目に格納されているかを確認できるプログラムを実装します。

# 問題
# 以下の配列から任意の数字を探して何番目に含まれているかという結果を返すsearchメソッドを、each_with_indexを用いて作成しましょう。

# 1
# input = [3, 5, 9 ,12, 15, 21, 29, 35, 42, 51, 62, 78, 81, 87, 92, 93]
# 雛形
# 以下の雛形のコードを参考に解答しましょう。

# 1
# 2
# 3
# 4
# 5
# 6
# 7
# def search(target_num, input)
#   # 処理を記述
# end

# input = [3, 5, 9 ,12, 15, 21, 29, 35, 42, 51, 62, 78, 81, 87, 92, 93]
# # 呼び出し例
# search(11, input)
# 出力例
# search(5, input) → 2番目にあります
# search(12, input) → 4番目にあります
# search(7, input) → その数は含まれていません

# ヒント
#  each_with_index
# each_with_indexは、Rubyに標準で組み込まれているメソッドの1つです。要素の繰り返し処理と同時に、その要素が何番目に処理されたのかも表すことができます。

# 以下のように書きます。

# 1
# 2
# 3
# 配列名.each_with_index  do |item, i|

# end
# 具体的には以下のように使うことができます。

# 1
# 2
# 3
# 4
# 5
# fruits = ["メロン", "バナナ", "アップル"]

# fruits.each_with_index do |item, i|
#  puts "#{i}番目のフルーツは、#{item}です。"
# end
# これを実行すると、以下のような出力結果が得られます。

# 1
# 2
# 3
# 0番目のフルーツは、メロンです。
# 1番目のフルーツは、バナナです。
# 2番目のフルーツは、アップルです。

# 出力例
# search(5, input) → 2番目にあります
# search(12, input) → 4番目にあります
# search(7, input) → その数は含まれていません

# ヒント
#  each_with_index
# each_with_indexは、Rubyに標準で組み込まれているメソッドの1つです。要素の繰り返し処理と同時に、その要素が何番目に処理されたのかも表すことができます。

# 以下のように書きます。

# 1
# 2
# 3
# 配列名.each_with_index  do |item, i|

# end
# 具体的には以下のように使うことができます。

# 1
# 2
# 3
# 4
# 5
# fruits = ["メロン", "バナナ", "アップル"]

# fruits.each_with_index do |item, i|
#  puts "#{i}番目のフルーツは、#{item}です。"
# end
# これを実行すると、以下のような出力結果が得られます。

# 1
# 2
# 3
# 0番目のフルーツは、メロンです。
# 1番目のフルーツは、バナナです。
# 2番目のフルーツは、アップルです。

def search(target_num, array)
  array.each_with_index do |num, i|
    if target_num == num
      puts "#{i + 1}番目にあります"
      exit
    end
  end
  puts "その数は含まれていません"
end

input = [3, 5, 9 ,12, 15, 21, 29, 35, 42, 51, 62, 78, 81, 87, 92, 93]
# 呼び出し例
search(3, input)
puts "処理終わり"

# 模範解答

# def search(target_num, input)

#   input.each_with_index do |num, index|
#     if num == target_num
#       puts "#{index + 1}番目にあります"
#       return
#     end
#   end
#   puts "その数は含まれていません"
# end

# input = [3, 5, 9 ,12, 15, 21, 29, 35, 42, 51, 62, 78, 81, 87, 92, 93]
# search(11, input)
# 解説
# searchメソッドを呼び出す際の処理とsearchメソッド内の処理、それぞれを分けて解説していきます。

# searchメソッドを呼び出す際の処理

# 配列inputを定義します。

# 次に、searchメソッドを呼び出す際に、11とinputという変数を実引数としてセットします。
# そして、呼び出されたsearchメソッドでは、実引数でセットした値を仮引数target_numとinputとして受け取ります。

# searchメソッド内の処理
# まず、input.each_with_indexでは、inputに格納されている要素を1つひとつnumとして取り出すと同時に、要素毎に割り当てられている添字をindexとして取得します。

# 次に、if文でnum == target_numという条件式を設定します。
# ここでは、inputから取り出された要素numと、target_numが等しいかを判別しています。

# そして、numとtarget_numが等しければ、numがinputの中の何番目に含まれているかが出力されます。
# #{index + 1}としているのは、配列が0番目から始まることを考慮するためです。

# 反対に、numとtarget_numが等くなければ、「その数は含まれていません」と出力されます。

# 今回は、引数で渡した「11」は配列inputには含まれていないので、条件には当てはまりません。
# よって、「その数は含まれていません」と出力されます。

exitとreturnに違い

exitはその時点で終わる（プログラム）
returnは処理が終わっても次の処理に進む