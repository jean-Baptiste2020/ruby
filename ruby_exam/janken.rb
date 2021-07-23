# プレイヤー(自分)に「0~2」を入力させるロジックを書きます。
class Player
    def hand
      # プレイヤーにじゃんけんの手を選択させる文章を表示させます。
      tab= [0,1,2]
      puts
      puts "Veuillez saisir un nombre."
      puts
      puts "0: Goo"
      puts "1: Choki"
      puts "2: Par"
      # 変数「input_hand」にプレイヤーの入力値を代入します。
      # ヒント：getsメソッドについて調べてみましょう。
      input_hand = gets.to_i
      
      # 「input_hand」が「0, 1, 2」のいずれかだと繰り返し処理を終了し、それ以外（アルファベットも含む）だと繰り返し処理を継続します。
      while true
        al=[1,2,0].sample
       if tab.include?input_hand
         if input_hand == al
          if input_hand == 0
            puts
            puts "La main de l'adversaire est Goo. Vous avez gagner."
            break
          elsif input_hand == 1
            puts
            puts "La main de l'adversaire est Choki. Vous avez gagner."
            break
          else
            puts
            puts "La main de l'adversaire est Par. Vous avez gagner."
            break
          end
         else
            puts
            puts "Réessayer!!!Veuillez saisir un nombre"
            puts
            puts "0: Goo"
            puts "1: Choki"
            puts "2: Par"
            # 変数「input_hand」にプレイヤーの入力値を代入します。
            # ヒント：getsメソッドについて調べてみましょう。
            input_hand = gets.to_i
         end

        else
            puts
            puts "Veuillez saisir les chiffres 0 à 2"
            puts "Réessayer!!!Veuillez saisir un nombre"
            puts
            puts "0: Goo"
            puts "1: Choki"
            puts "2: Par"
            # 変数「input_hand」にプレイヤーの入力値を代入します。
            # ヒント：getsメソッドについて調べてみましょう。
            input_hand = gets.to_i
        end
      end
     
    end
  end

  # Appelez la méthode jankenpon avec le nom de la classe.
  player = Player.new
  player.hand