class Api::V1::EmployeesController < ApplicationController

    # this will mirror the department methods for simplicity's sake

    before_action :get_employee, only: [:show, :destroy]

    def index
        @employees = Employee.all
        render json: @employees
    end

    def show
        render json: @employee
    end

    def create
        @employee = Employee.create(employee_params)
         if @employee.save
            render json: @employee, status: :accepted
        else
            render json: { errors: @employee.errors.full_messages }, status: :unprocessible_entity
        end
    end

    def destroy
        @employee.delete
    end

    private

    def get_employee
        @employee = Employee.find(params[:id])
    end

    def employee_params
        params.permit(:name, :title, :location, :office, :direct)
    end





end
