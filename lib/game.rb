class Game
  @board = []
  WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8],[6,4,2]]

  def initialize(board = Board.new, player_1 = Players::Human.new("X"), player_2 = Players::Human.new("O"))
    @board = board
    @player_1 = player_1
    @player_2 = player_2
  end

  def player_1
    self.player_1 = player_1
  end

  def player_2
    self.player_2 = player_2
  end

  #describe '#player_1' do
  #  it 'provides access to player_1' do
  #    game = Game.new
  #    player_1 = Player.new("X")
  #    game.player_1 = player_1
  #    expect(game.player_1).to eq(player_1)
  #  end
  #end

  #escribe '#player_2' do
  #  it 'provides access to player_2' do
  #    game = Game.new
  #    player_2 = Player.new("X")
  #    game.player_2 = player_2
  #    expect(game.player_2).to eq(player_2)
  #  end
end
