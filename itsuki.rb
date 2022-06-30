# ・クラス名 Hoge で クラスを作ってください
# ・クラス Hoge の中には 次のメソッドを定義してください

# |メソッド名|内容|
# |--------|----|
# |foo     |「私はfooです」と出力する|
# |bar     |「色は{何色}です」と出力する(「「何色」はインスタンス変数で出力する)|

# ・クラス Hoge から インスタンス を生成した時に、initialize メソッドが実行されるようにする。
# initializeメソッドの中身は以下で実行する

# インスタンス変数を１個、作成する。(インスタンス変数名は自分で決める)
# 内容は以下

# |役割|内容|
# |---|---|
# |色 | 何色か？を指定する|


# ・ruby実行した時に以下の通りに出力されるようにする

# 私はfooです
# 色は{何色}です


class GU
  def self.fuga
    puts "私はfooです"
  end

  def initialize(var_color)
    @color = var_color
  end

  def bar
    puts "色は#{@color}色です"
  end
end

red = GU.new("赤")

GU.fuga
red.bar