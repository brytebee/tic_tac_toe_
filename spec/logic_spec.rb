# spec/logic_spec.rb

require './lib/logic'

# rubocop:disable Metrics/BlockLength

describe Player do
  describe '#game_name' do
    it 'returns the name of game' do
      my_game = Player.new
      expect(my_game.game_name).to eql('Welcome to TIC TAC TOE game')
    end
  end

  describe '#sign_validate' do
    it 'returns boolean state of players' do
      sign_validated = Player.new
      expect(sign_validated.sign_validate('x')).to eql(true)
      expect(sign_validated.sign_validate('o')).to eql(true)
    end
  end

  describe '#move_validate' do
    it 'returns boolean state of player\'s move' do
      validate_move = Player.new
      expect(validate_move.move_validate(1)).to eql(true)
      expect(validate_move.move_validate(11)).to eql(false)
      expect(validate_move.move_validate(9)).to equal(true)
    end
  end

  describe '#index_taken?' do
    it 'returns the boolean state of board array\'s position' do
      state = Player.new
      expect(state.index_taken?(1, [1])).to eql(true)
      expect(state.index_taken?(8, [7])).to eql(true)
      expect(state.index_taken?(1, ['x'])).to eql(true) # can't figure this out
      expect(state.index_taken?(8, ['o'])).to eql(true) # can't figure this out
    end
  end

  describe '#win' do
    it 'returns boolean winning state' do
      won = Player.new
      expect(won.win(%w[o o o], 'o')).to eql(true)
      expect(won.win(%w[o o o], 'x')).to eql(false)
      expect(won.win(%w[o x o], 'x')).to eql(false)
      expect(won.win(%w[x o o], 'o')).to eql(false)
      expect(won.win(%w[x x x], 'x')).to eql(true)
    end
  end

  describe '#draw' do
    it 'returns game tie' do
      tie = Player.new
      expect(tie.draw).to eql("It\'s a draw! \nGame Ended !! \u{1F61C}")
    end
  end
end
# rubocop:enable Metrics/BlockLength
