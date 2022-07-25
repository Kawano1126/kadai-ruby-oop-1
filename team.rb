# 設計図を作成
class Team
  attr_accessor :name, :win, :lose, :draw
  
  # インスタンス作成の時に実行される
  def initialize(name, win, lose, draw)
   
    self.name = name
    self.win = win
    self.lose = lose
    self.draw = draw
  end
  # 作成したインスタンスから実行出来るインスタンスメソッド
 
  def calc_win_rate
   return win.to_f/(win+lose)
  end  

  def show_team_result
  puts "#{self.name}の2020年の成績は#{self.win}勝#{self.lose}敗#{self.draw}分、勝率は#{self.calc_win_rate}です。"
  end
end
# teamのインスタンスを作成
# newした際にinitializeメソッドが実行され、引数の値がインスタンス変数に代入される
giants = Team.new("Giants", 67, 45, 8)
tigers = Team.new("Tigers", 60,53,7 )
doragons=Team.new("Dragons", 60,55,5 )
baustars=Team.new("BayStars", 56,58,6) 
carp    =Team.new("Carp", 52,56,12) 
swallows=Team.new("Swallows", 42,69,10)
giants.show_team_result
tigers.show_team_result
doragons.show_team_result
baustars.show_team_result
carp.show_team_result
swallows.show_team_result