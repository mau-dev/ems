class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  # GET /employees
  # GET /employees.json
  def index
    @employees = Employee.all
    @hierarchies = Hierarchy.all
    @employees_tree = Hierarchy.all.arrange

    # @hierarchy = Hierarchy.find(params[:id])
     respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hierarchies }
    end

  end

  # GET /employees/1
  # GET /employees/1.json
  def show
      @employee = Employee.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @employee }
    end
  end

  # GET /employees/new
  def new
    @employee = Employee.new
     @hierarchies = Hierarchy.all

  end

  # GET /employees/1/edit
  def edit
  end

  # POST /employees
  # POST /employees.json
  def create
    @employee = Employee.new(employee_params)
   #  @hierarchy_name = Employee.hierarchy.name
   # @hierarchies = Hierarchy.all

    respond_to do |format|
      if @employee.save
        format.html { redirect_to @employee, notice: 'Employee was successfully created.' }
        format.json { render :show, status: :created, location: @employee }
      else
        format.html { render :new }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employees/1
  # PATCH/PUT /employees/1.json
  def update
    respond_to do |format|
      if @employee.update(employee_params)
        format.html { redirect_to @employee, notice: 'Employee was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee }
      else
        format.html { render :edit }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employees/1
  # DELETE /employees/1.json
  def destroy
    @employee.destroy
    respond_to do |format|
      format.html { redirect_to employees_url, notice: 'Employee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee
      @employee = Employee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_params
      params.require(:employee).permit(:last_name, :first_name, :birth_date, :designation, :department, :hiring_date, :salary, :hierarchy, :hierarchy_name, :hierarchy_id, :ancestry_id, :allow_nil => true)
       # params.require(:hierarchy).permit(:name, :ancestry_id, :parent_id, :child_id)
    end


    # # Use callbacks to share common setup or constraints between actions.
    # def set_hierarchy
    #   @hierarchy = Hierarchy.find(params[:id])
    # end

    # # Never trust parameters from the scary internet, only allow the white list through.
    # def hierarchy_params
    #   params.require(:hierarchy).permit(:name, :ancestry_id, :parent_id, :child_id)
    # end
end