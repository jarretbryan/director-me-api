class Api::V1::DepartmentsController < ApplicationController

    before_action :get_dept, only: [:show, :destroy]

    def index
        @departments = Department.all
        render json: @departments
    end

    def show
        render json: @department
    end

    def create
        @department = Department.create(dept_params)
        if @department.save
            render json: @department, status: :accepted
        else
            render json: { errors: @department.errors.full_messages }, status: :unprocessible_entity
        end
    end

    def destroy
        @department.delete
    end

    private

    def get_dept
        @department = Department.find(params[:id])
    end

    def dept_params
        params.permit(:name)
    end



end
