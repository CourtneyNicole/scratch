class PuzzlesController < ApplicationController
  def index
     @puzzle = Puzzle.all
  end

  def new
    @puzzle = Puzzle.new
  end

  def create
    Puzzle.create(puzzle_params)
    redirect_to root_path
  end

  private

  def puzzle_params
    params.require(:puzzle).permit(:message)
  end
end
