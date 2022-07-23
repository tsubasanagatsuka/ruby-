# 問題.1
# 以下の条件を達成するプログラムを実装しなさい

# 銀行口座に10万円の預金残高があり、お金を引き出すプログラムを作成します。

# ・お金を引き出すwithdrawメソッドを作成する
# ・お金を引き出すと手数料110円かかり、「◯◯円引き落としました。残高は◯◯円です」と表示する（残高は手数料を引いた額を表示します）
# ・引き落とし金額と手数料の合算が、預金残高より大きい場合は「残高不足です」と表示する
# ・以下にヒントを用意するので参考にしてください

def withdraw(balance, amount)
  fee = 110
  if (fee + amount) <= balance
    # 110 + 100     <= 1000000  <=にすることによってfee+amountが100000になうようにする
    puts "#{amount}円引き落としました。残高は#{balance - (amount + fee)}円です"
  else
    puts "残高不足です"
  end
end

balance = 100000# 残高
puts "いくら引き落としますか？（手数料110円かかります）"
amount = gets.to_i #ユーザーが入力した文字列を数値化する
withdraw(balance, amount)


# 模範解答

# def withdraw(balance, amount)
#   fee = 110
#   if balance >= (amount + fee)
#     balance -= (amount + fee)
#     puts "#{amount}円引き落としました。残高は#{balance}円です"
#   else
#     puts "残高不足です"
#   end
# end

# balance = 100000
# puts "いくら引き落としますか？（手数料110円かかります）"
# amount = gets.to_i
# withdraw(balance, amount)
# 解説
# 13行目で入力した金額（amount）と手数料110（fee）の合計が100,000以上か否かを判断し処理しています。
# 金額と手数料の合計が100,000以下の場合は、
# balance -= (amount + fee)、
# つまりbalance = balance - (amount + fee)が処理され、最終的な返り値が出力されます。
# 金額と手数料の合計が100,000以上の場合は残高不足である旨のメッセージを表示しています。