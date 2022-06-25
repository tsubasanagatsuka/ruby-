# [] = 配列
user_data = [
  {user: {profile: {name: 'George'}}},
  {user: {profile: {name: 'Alice'}}},
  {user: {profile: {name: 'Taro'}}},
 ]

#  putsの時は：は前につける
 puts user_data[0][:user][:profile][:name] 
 puts user_data[1][:user][:profile][:name] 
 puts user_data[2][:user][:profile][:name] 

# もしくはeachメソッドを使って順番に取ってくる
user_data.each do |u|
  puts u[:user][:profile][:name]
end

puts user_data[0][:user][:profile]

# マトリョーシカは順番にしか取り出せない