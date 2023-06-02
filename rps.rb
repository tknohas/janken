def janken 
  rps = ["グー", "チョキ", "パー", "戦わない"]
  puts "じゃんけん..."
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"
  player_hand = gets.to_i
  program_hand = rand(0..2)#rps.sample

  puts "ホイ!"
  puts "----------------------"
  puts "あなたは#{rps[player_hand]}を出しました"
  puts "相手は#{rps[program_hand]}を出しました"

  if player_hand == program_hand
    puts "あいこ"
    return true
  elsif player_hand == 3
    puts "じゃんけんを終了します"
  elsif player_hand > 3
    puts "0~3の数値を入力してね"
    return true
  elsif (player_hand == 0 && program_hand == 1) ||
    (player_hand == 1 && program_hand == 2) ||
    (player_hand == 2 && program_hand == 0) 
    puts "あなたの勝ち!"
    acchimuitehoi
  else
    puts "あなたの負け(>_<)"
    acchimuitehoi2
  end
end

def acchimuitehoi
  puts "あっち向いて..."
  puts "0(上)1(右)2(下)3(左)"
  player_choices = gets.to_i
  program_choices = rand(0..3)
  finger_direction = ["上", "右", "下", "左"]
  puts "ホイ!"
  puts "-----------------"

  if player_choices == program_choices
    puts "あなたは#{finger_direction[player_choices]}を指しました"
    puts "相手は#{finger_direction[program_choices]}を向きました"
    puts "おめでとう! あなたの勝ち!"
    return false
  elsif player_choices > 3
    puts "0~3の数値を選んでね"
    acchimuitehoi
  else 
    puts "あなたは#{finger_direction[player_choices]}を指しました"
    puts "相手は#{finger_direction[program_choices]}を向きました"
    puts "ハズレ〜"
    return true
  end
end

def acchimuitehoi2
  puts "あっち向いて..."
  puts "0(上)1(右)2(下)3(左)"
  player_choices = gets.to_i
  program_choices = rand(0..3)
  finger_direction = ["上", "右", "下", "左"]
  puts "ホイ!"
  puts "-----------------"

  if player_choices == program_choices
    puts "相手は#{finger_direction[program_choices]}を指しました"
    puts "あなたは#{finger_direction[player_choices]}を向きました"
    puts "残念...あなたの負け..."
    return false
  elsif player_choices > 3
    puts "0~3の数値を選んでね"
    acchimuitehoi2
  else 
    puts "相手は#{finger_direction[program_choices]}を指しました"
    puts "あなたは#{finger_direction[player_choices]}を向きました"
    puts "セーフ!"
    return true
  end
end

next_game = true

while next_game do
  next_game = janken
end


