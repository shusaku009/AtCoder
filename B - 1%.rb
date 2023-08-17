# B - 1%
# https://atcoder.jp/contests/abc165/tasks/abc165_b

# 問題文
# 高橋くんはAtCoder銀行に 
# 100 円を預けています。

# AtCoder銀行では、毎年預金額の 
# 1 % の利子がつきます(複利、小数点以下切り捨て)。

# 利子以外の要因で預金額が変化することはないと仮定したとき、高橋くんの預金額が初めて 
# X 円以上になるのは何年後でしょうか。

# 制約
# 101≤X≤10 
# 18

# 入力はすべて整数

# 回答
x = gets.to_i

a = 100

count = 0

while a < x
  a = a + a/100
  count += 1
end

puts count
