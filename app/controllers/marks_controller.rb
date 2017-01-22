class MarksController < ApplicationController
  before_action :set_subject

  respond_to :html

  def edit
    @student = Student.find(params[:id])
    @evaluable_items = @subject.evaluable_items
    @mark_values = {}
    @evaluable_items.each do |evaluable_item|
      mark = Mark.find_by(evaluable_item_id: evaluable_item.id, student_id: @student.id)
      @mark_values[evaluable_item.id] = mark.value if mark
    end
  end

  def update
    @student = Student.find(params[:id])
    @evaluable_items = @subject.evaluable_items
    @mark_values = params[:values]
    @evaluable_items.each do |evaluable_item|
      if @mark_values[evaluable_item.id.to_s]
        mark = Mark.find_or_initialize_by(evaluable_item_id: evaluable_item.id, student_id: @student.id)
        mark.value = @mark_values[evaluable_item.id.to_s].to_f
        mark.save
      end
    end
    redirect_to subject_path(@subject)
  end

  private

  def set_subject
    @subject = Subject.find(params[:subject_id])
  end

end