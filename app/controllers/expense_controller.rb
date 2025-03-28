class ExpenseController < ApplicationController
    def index
        @user = current_user
        @expenses = @user.expenses
        @total_spent = @expenses.sum(:ammount)
        @averege_spent = @expenses.average(:ammount) || 0
        @maximum_spent = @expenses.maximum(:ammount) || 0
        puts @expenses
    end
end
