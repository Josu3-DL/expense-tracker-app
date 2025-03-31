class ExpenseController < ApplicationController
    before_action :require_login
    
    def index
        @user = current_user
        @expenses = @user.expenses.order(date: :desc)
        @total_spent = @expenses.sum(:ammount).to_f.round(2)
        @averege_spent = @expenses.average(:ammount).to_f.round(2) 
        @maximum_spent = @expenses.maximum(:ammount) || 0.0
        @expense = Expense.new
    end

    def create
        @expense = current_user.expenses.build(expense_params)
        @expense.ammount = @expense.ammount.to_f.round(2)
        if @expense.save
            redirect_to dashboard_path(reload: true)
        else
            #puts @expense.errors.full_messages
            @user = current_user
            @expenses = @user.expenses 
            render :index
        end
    end

    def destroy
        @expense = current_user.expenses.find(params[:id])
        @expense.destroy
        redirect_to dashboard_path(reload: true)
    end
    
      def update
        @expense = current_user.expenses.find(params[:id])
        if @expense.update(expense_params)
          @expense.update(ammount: @expense.ammount.to_f.round(2))
          redirect_to dashboard_path(reload: true) 
        else
          render :edit 
        end
      end

    
    private
    def expense_params
        params.require(:expense).permit(:name,:ammount,:category,:date)
    end


end
