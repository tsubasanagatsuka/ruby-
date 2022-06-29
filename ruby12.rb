# 問題.1
# クラスFruitを以下の仕様で定義してください。

# インスタンス名｜名前   ｜価格
# apple       |リンゴ  |120
# orange      |オレンジ|200
# strawbery   |イチゴ  |60 

# インスタンス変数
# ・name
# ・price

# クラスメソッド
# メソッド名|処理
# fresh   |採れたて新鮮な果実ですと表示

# インスタンスメソッド
# メソッド名  |処理
# initialize|引数で名前と同じ価格を渡し、インスタンス変数nameとpriceに代入
# introduce |名前は価格円ですと表示


# 実行結果は以下のようになります。

# 採れたて新鮮な果実です
# リンゴは120円です
# オレンジは200円です
# イチゴは60円です

# 雛形
# 作ってもらうプログラムのひな形は以下です。


# class Fruit
#  def クラスメソッド
#    # 正しくメソッドを定義した上で、ここに処理を記入してください
#  end

#  def initialize
#    # ここに処理を記入してください
#  end

#  def インスタンスメソッド
#    # 正しくメソッドを定義した上で、ここに処理を記入してください
#  end
# end


# 3つのインスタンスを生成してください

# クラスメソッドを呼び出し、「採れたて新鮮な果実です」と表示してください
# インスタンス毎にインスタンスメソッドを呼び出し、「【名前】は【価格】円です」と表示してください
# ↓

class Fruit
  def self.fresh
    puts "採れたて新鮮な果実です"
  end
 
  def initialize(name,price)
    @name = name
    @price = price
  end
 
  def introduce
    puts "#{@name}は#{@price}円です"
  end
 end

apple = Fruit.new("リンゴ", 120)
orange = Fruit.new("オレンジ", 200)
strawberry = Fruit.new("イチゴ", 60)

Fruit.fresh
apple.introduce
orange.introduce
strawberry.introduce

模範解答

class Fruit

 def self.fresh
   puts "採れたて新鮮な果実です"
 end

 def initialize(name, price)
   @name = name
   @price = price
 end

 def introduce
   puts "#{@name}は#{@price}円です"
 end
end

apple = Fruit.new("リンゴ", 120)
orange = Fruit.new("オレンジ", 200)
strawberry = Fruit.new("イチゴ", 60)

Fruit.fresh
apple.introduce
orange.introduce
strawberry.introduce
解説
まずは、インスタンスの生成と、インスタンス毎のインスタンス変数（@nameと@price）を定義します。
ポイントは、インスタンス生成時の引数と、initializeメソッドです。
initializeメソッドは、newメソッドの引数を受け取ることができます。
インスタンス毎の名前と価格をnewメソッドから受け取り、インスタンス変数（@nameと@price）に代入しましょう。


class Fruit
 def クラスメソッド
   # ここに処理を記入してください
 end

 def initialize(name, price)
   @name = name
   @price = price
 end

 def インスタンスメソッド
   # 正しくメソッドを定義した上で、ここに処理を記入してください
 end
end


apple = Fruit.new("リンゴ", 120)
orange = Fruit.new("オレンジ", 200)
strawberry = Fruit.new("イチゴ", 60)

# クラスメソッドを呼び出し、「採れたて新鮮な果実です」と表示してください
# インスタンス毎にインスタンスメソッドを呼び出し、「【名前】は【価格】円です」と表示してください
次に、クラスメソッドfreshを定義します。
処理内容通りの文言が出力されるよう、putsメソッドを用いて記述しましょう。


class Fruit
 def self.fresh
   puts "採れたて新鮮な果実です"
 end

 def initialize(name, price)
   @name = name
   @price = price
 end

 def インスタンスメソッド
   # 正しくメソッドを定義した上で、ここに処理を記入してください
 end
end


apple = Fruit.new("リンゴ", 120)
orange = Fruit.new("オレンジ", 200)
strawberry = Fruit.new("イチゴ", 60)

# クラスメソッドを呼び出し、「採れたて新鮮な果実です」と表示してください
# インスタンス毎にインスタンスメソッドを呼び出し、「【名前】は【価格】円です」と表示してください
続いて、インスタンスメソッドを定義します。
各インスタンスに対して処理内容通りの文言が出力されるよう、putsメソッドを用いて記述をしましょう。


class Fruit
 def self.fresh
   puts "採れたて新鮮な果実です"
 end

 def initialize(name, price)
   @name = name
   @price = price
 end

 def introduce
   puts "#{@name}は#{@price}円です"
 end
end


apple = Fruit.new("リンゴ", 120)
orange = Fruit.new("オレンジ", 200)
strawberry = Fruit.new("イチゴ", 60)

# クラスメソッドを呼び出し、「採れたて新鮮な果実です」と表示してください
# インスタンス毎にインスタンスメソッドを呼び出し、「【名前】は【価格】円です」と表示してください
最後に、定義したクラスメソッドとインスタンスメソッドを呼び出します。
クラスメソッドは「クラス名.メソッド名」で、インスタンスメソッドは「インスタンス.メソッド名」で呼び出しましょう。


class Fruit

 def self.fresh
   puts "採れたて新鮮な果実です"
 end

 def initialize(name, price)
   @name = name
   @price = price
 end

 def introduce
   puts "#{@name}は#{@price}円です"
 end
end

apple = Fruit.new("リンゴ", 120)
orange = Fruit.new("オレンジ", 200)
strawberry = Fruit.new("イチゴ", 60)

Fruit.fresh
apple.introduce
orange.introduce
strawberry.introduce
解説は以上になります。

193行目のself.freshはselfをつけることによってクラスメソッドとして定義。
196行目のinitializeメソッドで第一引数、第二引数を定義(ここで206から208の.newメソッドが生まれる)newメソッドからinitialezeに渡すための変数を197,198で作る
201行目のinteoduceでputsした時に@変数が入るようにする
210~213行目でputsした時にターミナルで表示されるもの.introduceで決めている


・selfとは
  Rubyのselfとは、オブジェクトそのものを指しています。

  例えば、作成したUserクラスがあり、そのクラス内のメソッドで、selfを参照している状況で、オブジェクトを作成し、そのメソッドを実行するとUserのオブジェクトであることが分かります。

  selfはクラス内部で書かれる場合、そのクラスのインスタンス変数の参照に利用されます。

  また、 self をメソッドに付与する事で、インスタンスメソッドではなく、クラスメソッドとして定義する事もできます。

  selfの一般的な説明
  selfはオブジェクトそのものである

  オブジェクトとは
  まずオブジェクトについて理解していきましょう。
  Rubyは全てがオブジェクトです。

  文字列オブジェクト
  数値オブジェクト
  配列オブジェクト
  ハッシュオブジェクトなど
  現実世界で言えば人やモノ、動物などありとあらゆるものをオブジェクトとして扱います。

・#{}とは
  式展開
  例：
  str2 = "おいしい"
  str1 = "#{str2}店"  #=> 「#{}」は" "の中で変数内の文字列を取り出す（式展開）
  2行目の文字列リテラルの中に， #{ str2 } という部分があります。
  これのことを「変数展開」と書いている記事が非常に多いのですが，PHP や Perl などのそれとは異なり，Ruby の場合は中に式が書ける，ということが本質的に重要です1。
  それゆえ，式展開 と呼ばれています。