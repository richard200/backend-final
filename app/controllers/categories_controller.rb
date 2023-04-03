class CategoriesController < ApplicationController
    def index
        cat = Category.all 
        app_response(message: 'success', status: :ok, data: cat)
    end

    def create 
        cat = Category.create!(category_params)
        app_response(message: 'Category created successfully', status: :created, data: cat)

    end

    def destroy
        # check whether the task exists
        cat = Category.find_by(id:params[:id])
       
       #  delete the task
       if cat
           cat.destroy
           head :no_content
       #  return a not found user
       else 
           render json: {error: 'Category not found'}, status: not_found
       end
       end

    private 
    def category_params
        params.permit(:name, :description)
    end
end
