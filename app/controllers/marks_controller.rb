class MarksController < ApplicationController
  before_action :set_mark, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @marks = Mark.all
    respond_with(@marks)
  end

  def show
    respond_with(@mark)
  end

  def new
    @mark = Mark.new
    respond_with(@mark)
  end

  def edit
  end

  def create
    @mark = Mark.new(mark_params)
    @mark.save
    respond_with(@mark)
  end

  def update
    @mark.update(mark_params)
    respond_with(@mark)
  end

  def destroy
    @mark.destroy
    respond_with(@mark)
  end

  private
    def set_mark
      @mark = Mark.find(params[:id])
    end

    def mark_params
      params.require(:mark).permit(:value, :description, :mdate)
    end
end
