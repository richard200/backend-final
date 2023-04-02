class CategoriesController < ApplicationController
    def index
        cat = Category.all 
        app_response(message: 'success', status: :ok, data: cat)
    end

    def create 
        cat = Category.create!(category_params)
        app_response(message: 'Category created successfully', status: :created, data: cat)

    end

    private 
    def category_params
        params.permit(:name, :description)
    end
end
