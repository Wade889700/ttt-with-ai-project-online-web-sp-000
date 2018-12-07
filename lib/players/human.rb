module Players
  class Human < Player
    def move(board)
      puts "Which position would you like to take?"
      cell_number = gets
      cell_number
    end
  end
end





#  describe '#move' do
#    it 'asks the user for input and returns it' do
#      human = Players::Human.new("X")
#      allow($stdout).to receive(:puts)
#
#      expect(human).to receive(:gets).and_return("1")
#
#      expect(human.move(Board.new)).to eq("1")
#    end
#  end
#end"
