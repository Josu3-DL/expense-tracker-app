class ExpenseController < ApplicationController
    before_action :require_login
    
    def index
        @user = current_user
        @expenses = @user.expenses
        @total_spent = @expenses.sum(:ammount)
        @averege_spent = @expenses.average(:ammount) || 0
        @maximum_spent = @expenses.maximum(:ammount) || 0
        @expense = Expense.new
    end

    def create
        @expense = current_user.expenses.build(expense_params)
        if @expense.save
            redirect_to dashboard_path
        else
            #puts @expense.errors.full_messages
            @user = current_user
            @expenses = @user.expenses 
            render :index
        end
    end

    def destroy
        #@expense = current_user.expenses.find(params[:id])
        @expense = Expense.find(params[:id])
        @expense.destroy
        redirect_to dashboard_path
    end

    private
    def expense_params
        params.require(:expense).permit(:name,:ammount,:category,:date)
    end


end
