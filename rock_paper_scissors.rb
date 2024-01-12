
def rock_paper_scissors
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
    return rock_paper_scissors
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
end
rock_paper_scissors
