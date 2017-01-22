class SubjectsController < ApplicationController
  before_action :set_subject, only: [:enroll, :cancel, :show, :edit, :update, :destroy]

  # GET /subjects
  # GET /subjects.json
  def index
    @subjects = Subject.where(user: current_user).page(params[:page]).per(10)
  end

  # GET /subjects/1
  # GET /subjects/1.json
  def show
    @students = @subject.students.where(user_id: current_user.id).page(params[:page]).per(10)
    @evaluable_items = @subject.evaluable_items.includes(:marks)
  end

  # GET /subjects/new
  def new
    @subject = Subject.new
  end

  # GET /subjects/1/edit
  def edit
    @students = Student.where(user: current_user).page(params[:page]).per(10)
  end

  # POST /subjects
  # POST /subjects.json
  def create
    @subject = Subject.new(subject_params)
    @subject.user = current_user

    respond_to do |format|
      if @subject.save
        format.html { redirect_to @subject, notice: t(:subject_successfullly_created) }
        format.json { render action: 'show', status: :created, location: @subject }
      else
        format.html { render action: 'new' }
        format.json { render json: @subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subjects/1
  # PATCH/PUT /subjects/1.json
  def update
    respond_to do |format|
      if @subject.update(subject_params)
        format.html { redirect_to @subject, notice: t(:subject_successfullly_updated) }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subjects/1
  # DELETE /subjects/1.json
  def destroy
    @subject.destroy
    respond_to do |format|
      format.html { redirect_to subjects_url }
      format.json { head :no_content }
    end
  end

  def enroll
    student = Student.find(params[:student_id])
    redirect_to(root_url) unless current_user?(student.user)
    @subject.students << student
    redirect_to(@subject)
  end

  def cancel
    @subject.students.delete(Student.find(params[:student_id]))
    redirect_to(@subject)
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_subject
    @subject = Subject.find(params[:id])
    redirect_to(root_url) unless current_user?(@subject.user)
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def subject_params
    params.require(:subject).permit(:name, :hours, :remarks, :course)
  end
end