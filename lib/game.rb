class Game
  attr_accessor :board, :player_1, :player_2
  WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[6,4,2]]

  def initialize(player_1 = Players::Human.new("X"), player_2 = Players::Human.new("O"), board = Board.new)
    @board= board
    @player_1 = player_1
    @player_2 = player_2
  end

  def current_player
    if @board.turn_count % 2 == 0
       @player_1
    else
       @player_2
    end
  end

  def won?
    cells = @board.cells
    WIN_COMBINATIONS.each do |combination|
      #WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[6,4,2]]
      element_1 = cells[combination[0]]
      element_2 = cells[combination[1]]
      element_3 = cells[combination[2]]
      x_win_condition


  end

  describe '#won?' do
    it 'returns false for a draw' do
      game = Game.new
      game.board.cells = ["X", "O", "X", "O", "X", "X", "O", "X", "O"]

      expect(game.won?).to be_falsey
    end

    it 'returns the correct winning combination in the case of a win' do
      game = Game.new
      game.board.cells = ["X", "O", "X",
                          "O", "O", "X",
                          "O", "X", "X"]

      expect(game.won?).to contain_exactly(2, 5, 8)
    end

  def draw?
  end

  def over?
  end

  def winner?
  end


end
