class EvaluableItemsController < ApplicationController
  before_action :set_parent_subject
  before_action :set_evaluable_item, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @evaluable_items = @subject.evaluable_items
    respond_with(@subject,@evaluable_item)
  end

  def show
    respond_with(@subject,@evaluable_item)
  end

  def new
    @evaluable_item = @subject.evaluable_items.new
    respond_with(@subject,@evaluable_item)
  end

  def edit
  end

  def create
    @evaluable_item = @subject.evaluable_items.new(evaluable_item_params)
    @evaluable_item.save
    respond_with(@subject,@evaluable_item)
  end

  def update
    @evaluable_item.update(evaluable_item_params)
    respond_with(@subject,@evaluable_item)
  end

  def destroy
    @evaluable_item.destroy
    respond_with(@subject,@evaluable_item)
  end

  private
  def set_parent_subject
    @subject = Subject.find(params[:subject_id])
  end

  def set_evaluable_item
    @evaluable_item = @subject.evaluable_items.find(params[:id])
  end

  def evaluable_item_params
    params.require(:evaluable_item).permit(:name, :remarks, :weight)
  end
end