# spec/logic_spec.rb

require './lib/logic'

# rubocop:disable Metrics/BlockLength

describe Player do
  describe '#game_name' do
    it 'returns the name of game' do
      my_game = Player.new
      expect(my_game.game_name).to eql('Welcome to TIC TAC TOE game')
    end

    it 'returns the name of game' do
      my_game = Player.new
      expect(my_game.game_name).not_to eql('super mario')
    end
  end

  describe '#sign_validate' do
    it 'returns boolean state of players' do
      sign_validated = Player.new
      expect(sign_validated.sign_validate('g')).to eql(false)
    end

    it 'returns boolean state of players' do
      sign_validated = Player.new
      expect(sign_validated.sign_validate('g')).to eql(false)
    end
  end

  describe '#move_validate' do
    it 'returns boolean state of player\'s move' do
      validate_move = Player.new
      expect(validate_move.move_validate(1)).to eql(true)
    end

    it 'returns boolean state of player\'s move' do
      validate_move = Player.new
      expect(validate_move.move_validate(11)).to eql(false)
    end
  end

  describe '#index_taken?' do
    it 'returns the boolean state of board array\'s position' do
      state = Player.new
      expect(state.index_taken?(1, [1])).to eql(true)
    end

    it 'returns the boolean state of board array\'s position' do
      state = Player.new
      expect(state.index_taken?(1, %w[o x])).to eql(false)
    end
  end

  describe '#win' do
    it 'returns boolean winning state' do
      won = Player.new
      expect(won.win(%w[o o o], 'o')).to eql(true)
    end

    it 'returns boolean winning state' do
      won = Player.new
      expect(won.win(%w[o o o], 'x')).to eql(false)
    end

    it 'returns boolean winning state' do
      won = Player.new
      expect(won.win(%w[o x o], 'x')).to eql(false)
    end

    it 'returns boolean winning state' do
      won = Player.new
      expect(won.win(%w[x o o], 'o')).to eql(false)
    end

    it 'returns boolean winning state' do
      won = Player.new
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
