# プレイヤー(自分)に「0~2」を入力させるロジックを書きます。
class Player
    def hand
      # プレイヤーにじゃんけんの手を選択させる文章を表示させます。
      tab= ["Goo","Choki","Par"]
      puts
      puts "Veuillez saisir un nombre."
      puts
      puts "0: Goo"
      puts "1: Choki"
      puts "2: Par"
      # 変数「input_hand」にプレイヤーの入力値を代入します。
      # ヒント：getsメソッドについて調べてみましょう。
      input_hand = gets.chomp
      
      # 「input_hand」が「0, 1, 2」のいずれかだと繰り返し処理を終了し、それ以外（アルファベットも含む）だと繰り返し処理を継続します。
      while true
        al=[1,2,0].sample
       if ["0","1","2"].include?(input_hand)
         if input_hand.to_i === al
           puts "La main de l'adversaire est #{tab[al]}. Egalité"
           puts
            puts "Veuillez saisir un nombre."
            puts
            puts "0: Goo"
            puts "1: Choki"
            puts "2: Par"
            # 変数「input_hand」にプレイヤーの入力値を代入します。
            # ヒント：getsメソッドについて調べてみましょう。
            input_hand = gets.chomp
         elsif (input_hand.to_i == 0 && al == 1) || (input_hand.to_i == 1 && al == 2) || (input_hand.to_i == 2 && al == 0)
          puts "La main de l'adversaire est #{tab[al]}. Vous gagnez."
          break
         else
          puts "La main de l'adversaire est #{tab[al]}. Vous perdez."
          break
         end

        else
            puts
            puts "Veuillez saisir les chiffres 0 à 2"
            # 変数「input_hand」にプレイヤーの入力値を代入します。
            # ヒント：getsメソッドについて調べてみましょう。
            input_hand = gets.chomp
        end
      end
     
    end
  end

  # Appelez la méthode jankenpon avec le nom de la classe.
  player = Player.new
  player.hand