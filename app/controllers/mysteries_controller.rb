class MysteriesController < ApplicationController

  def index
    @mystery = Mystery.new
    @mysteries = Mystery.all
  end

  def create
    mystery = Mystery.new(mystery_params)
    mystery.save
  end
  private

  def mystery_params
    params.require(:mystery).permit(:mystery_img)
  end
end
