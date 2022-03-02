puts "最初はグー！！ じゃんけん..."

def janken
 puts "[0]グー\n[1]チョキ\n[2]パー"

 player_hand = gets.to_i
 enemy_hand = rand(3) 

 jankens = ["グー","チョキ","パー"]
 puts "あなたの手:#{jankens[player_hand]}, 相手の手:#{jankens[enemy_hand]}"
 
 #あいこの場合
 if player_hand == enemy_hand
   puts "あいこで"
   return true
   
 #じゃんけんで勝った場合
 elsif (player_hand == 0 && enemy_hand == 1)||(player_hand == 1 && enemy_hand == 2)||(player_hand == 2 && enemy_hand == 0)
   puts"あなたの勝ち"
   puts "あっち向いて..."
   puts "\s\s[0]上\n[1]左[2]右\n\s\s[3]下"
   
   player_hoi = gets.to_i
   enemy_hoi = rand(4)
   
   hois = ["上","左","右","下"]
   puts "あなた:#{hois[player_hoi]}, 相手:#{hois[enemy_hoi]}"
   
   #あっち向いてホイ　当てた場合
   if player_hoi == enemy_hoi
     puts "YOU WIN"
     return false
   #あっち向いてホイ　外した場合  
   else
     puts "じゃんけん..."
     return true
   end   
  
 #じゃんけんで負けた場合  
 else
   puts "あなたの負け"
   puts "あっち向いて..."
   puts "\s\s[0]上\n[1]左[2]右\n\s\s[3]下"
   
   player_hoi = gets.to_i
   enemy_hoi = rand(4)
   
   hois = ["上","左","右","下"]
   puts "あなた:#{hois[player_hoi]}, 相手:#{hois[enemy_hoi]}"
   
    #あっち向いてホイ　当てられた場合
   if player_hoi == enemy_hoi
     puts "YOU LOSE"
     return false
   #あっち向いてホイ　外れた場合  
   else
     puts "じゃんけん..."
     return true
   end
   
   
 end
end  

next_game = true

while next_game
  next_game = janken
end  