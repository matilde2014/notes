class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  # GET /students
  # GET /students.json
  def index
    @students = Student.where(user: current_user)
  end

  # GET /students/1
  # GET /students/1.json
  def show
    @subjects = @student.subjects.where(:user_id => current_user.id)
  end

  # GET /students/new
  def new
    @student = Student.new
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(student_params)
    @student.user = current_user

    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: t(:student_successfullly_created) }
        format.json { render action: 'show', status: :created, location: @student }
      else
        format.html { render action: 'new' }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: t(:student_successfullly_updated) }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_student
    @student = Student.find(params[:id])
    redirect_to(root_url) unless current_user?(@student.user)
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def student_params
    params.require(:student).permit(:name, :birthday, :nif, :address, :phone, :email, :guardian_name, :guardian_phone, :guardian_email,
                                    :former_studies, :access_mode, :remarks)

  end
end