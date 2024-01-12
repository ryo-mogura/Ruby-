
def janken_attihoi
  # 画面表示
  puts 'ジャンケン'
  puts "0: グー, 1: チョキ, 2: パー"

  # playerの出す手の処理
  jankens = ["グー","チョキ","パー"]
  player = gets.to_i
  player_hand = jankens[player]
  cpu = rand(3)
  cpu_hand = jankens[cpu]
  if player < 3
    puts "ホイ"
  elsif player == 3
    puts "戦わない"
    exit
  else
    puts "1~3の数字を入力してください"
    return janken_attihoi
  end
  # 出した手の表示
  puts "あなた:#{player_hand}を出しました"
  puts "相手：#{cpu_hand}を出しました"

  # 勝敗の処理
  result = player - cpu
  if result == 0
    puts "あいこ"
    janken_result = "draw"
  elsif result == 2 || result == -1
    puts "勝利"
    janken_result = "win"
  elsif result == 1 || result == -2
    puts "敗北"
    janken_result = "lose"
  end

  #あっちむいてほいの処理
  puts "あっちむいて"
  puts "0(上)1(下)2(右)3(左)"
  face_direction = ["上","下","右","左"]
  player = gets.to_i
  player_direction = face_direction[player]
  program = rand(4)
  program_direction = face_direction[program]
  puts "--------------------------------"
  puts "あなた:#{player_direction}を出しました"
  puts "相手：#{program_direction}を出しました"
  puts "--------------------------------"
  case janken_result
  when "win","lose" #ジャンケンで勝ちまたは負けの時
    if (player_direction == program_direction) && (janken_result == "win") #ジャンケンで勝ち、同じ方向に向いた時の処理
      puts ("あなたの勝ちです")
    elsif (player_direction == program_direction) && (janken_result == "lose") #ジャンケンで負け、同じ方向に向いた時の処理
      puts ("あなたの負けです")
    else
      return janken_attihoi
    end

  when "draw"  #引き分けの処理
    puts "引き分けです"
    janken_attihoi
  end

end

janken_attihoi
