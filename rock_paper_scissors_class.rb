class JankenAttihoi
  def initialize()
    puts 'ジャンケン'
    puts "0: グー, 1: チョキ, 2: パー"
    @your_hand_s = gets.to_i
  end

  def rock_paper_scissors
    hand = ['グー', 'チョキ', 'パー']
    your_hand = hand[@your_hand_s]
    cpu_hand_s = rand(3)
    cpu_hand = hand.sample

    if @your_hand_s < hand.length - 1
      puts 'ポン'
      puts "あなたの出した手 : #{your_hand}"
      puts "CPUの出した手 : #{cpu_hand}"
    else
      puts '0~2を選択してください'
      puts '-----やり直し-----'
      return rock_paper_scissors
    end

    outcome = @your_hand_s - cpu_hand_s
    if outcome == -1 || outcome == 2
      result = 'win'
    elsif outcome == -2 || outcome == 1
      result = 'lose'
    else
      puts 'あいこ'
      return rock_paper_scissors
    end
  end

  def look_over_there

  end
end
gamestart = JankenAttihoi.new
gamestart.rock_paper_scissors

