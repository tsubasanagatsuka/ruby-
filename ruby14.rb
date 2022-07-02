# 問題.1
# 概要
# 本ドリルでは、2つの条件を組み合わせた条件式を持つプログラムを実装します。

# 問題
# 以下の要件を満たす police_troubleメソッドを実装しましょう。

# あなたは警官です。aとb二人の容疑者の取り調べをしています。このとき、次のルールで証言の真偽判定を行います。
# ※問題文で登場したaとb二人の容疑者は、今回実装するpolice_troubleメソッドの引数として取り扱っていきます。

# 第一引数aと第二引数bどちらの証言も真(true)であれば、Trueを出力すること
# 第一引数aと第二引数bどちらの証言も偽(false)であれば、Trueを出力すること
# 第一引数aと第二引数bで証言の真偽が一致しない場合であれば、Falseを出力すること
# 雛形

# def police_trouble(a, b)
#   # ここに条件式を記述する
# end

# # 呼び出し例
# police_trouble(true, true) 
# police_trouble(false, false)
# police_trouble(true, false) 
# 出力例
# police_trouble(true, true) → True
# police_trouble(false, false) → True
# police_trouble(true, false) → False

# ヒント
#  論理演算子
# 論理演算子とは、式の「真（True）」と「偽（False）」の確認や演算を行う際に用いられる演算子（記号、符号）のことです。以下のように条件分岐を実装する際、条件式に複数の条件を組み合わせるために用いられます。


# if ( 【複数の条件が含まれる条件式】 )

# end
# 複数の条件式を組み合わせた複雑な条件式を記述するために論理演算子&&、||、!を使います。
# 以下のように使用します。


# # aもbもtrueの場合にtrue 
# a && b

# # aかbのどちらかがtrueの場合にtrue
# a || b 

# # aがtrueの場合にfalse、aがfalseの場合にtrue
# !a

def police_trouble(a, b)
  if ( a && b || !a && !b )
    puts "True"
  else
    puts "False"
  end
end
# 呼び出し例
police_trouble(true, true) 
police_trouble(false, false)
police_trouble(true, false) 

# アルゴリズムの組み立て方

# まず、aとbの両者の証言がTrueの条件を考える。

# a && b   # a かつ b がtrueの時の条件式
# 次に、aとbの両者の証言がFalseの条件を考える。


# !a && !b   # a かつ b がFalseの時の条件式
# 最後に、上記２つの論理を「または」でつなげる。


# a && b || !a && !b
# 以上で、「両者の証言がTrue、またはFalseであれば、その証言はTrueとする。」の条件式が出来上がる。あとは、これをif文で書くだけ。

解説
2行目のif文で論理演算子&&と||と!用いて条件式を記述しています。

(a && b) || (!a && !b)とは、
「aとbの証言がどちらもtrue、または、どちらも証言がfalse」の場合「True」と出力されます。それ以外であれば「False」と出力される条件です。


def police_trouble(a, b)
  if (a && b) || (!a && !b)
    puts "True"
  else
    puts "False"
  end
end



police_trouble(true, true) 
police_trouble(false, false) 
police_trouble(true, false) 
問題文の出力例の条件で当てはめてみます。

1
police_trouble(true, true) → True
(a && b)の「aとbの証言がどちらもtrue」に当てはまるので、「True」が出力されます。

1
police_trouble(false, false) → True
(!a && !b)の「どちらも証言がfalse」に当てはまるので、「True」が出力されます。

1
police_trouble(true, false) → False
(a && b) || (!a && !b)のどちらにも当てはまらないので、「False」が出力されます。


