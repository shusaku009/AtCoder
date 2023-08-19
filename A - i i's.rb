# 問題文
# 正整数 
# N が与えられるので、 長さ 
# L:=N(N+1)/2 の整数列 
# A=(A 
# 1,A 2,…,AL) であって、下記の条件をすべて満たすものを1つ出力してください。

# すべてのi=1,2,…,N について、Aはiをちょうど i個含む。
# すべてのi=1,2,…,Lについて、1≤∣A i−A i+1∣≤2 。ただし、AL+1​はA1​を表す。
# なお、本問題の制約下において、上記の条件をすべて満たす長さ L の整数列A が必ず存在することが証明できます。

# 制約
# 3≤N≤1000
# N は整数

# 回答
def generate_sequence(n)
  result = [1]

  (2..n).each do |i|
    result.push(i)
    result.push(i - 1)
    (2..i).each do |j|
      result.push(i)
    end
  end

  result
end

n = gets.to_i
puts generate_sequence(n).join(" ")