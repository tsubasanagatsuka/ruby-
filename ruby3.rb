class Article

  def initialize(author, title, content)
    @author = author
    @title = title
    @content = content
  end
  def art
    puts "著者: #{@author}"
    puts "タイトル: #{@title}"
    puts "本文: #{@content}"
  end
end

art_book = Article.new("阿部", "rubyの素晴らしさ", "Awesome ruby!")
art_title = Article.new("佐藤", "樹の素晴らしさ", "Awesome 彼女!")
art_title.art
art_book.art

# イニシャライズは端折るためのやつ

# newの時点で勝手に実行される

