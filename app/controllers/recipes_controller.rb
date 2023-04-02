class RecipesController < ApplicationController
    # before_action :verify_auth

    def index 
        recipe = Recipe.all 
        app_response(message: 'success', status: :ok, data: recipe) 
    end

    def create 
        recipe = Recipe.create(recipe_params)
        if recipe.valid?
            app_response(message: 'Recipe created successfully', status: :created, data: recipe)
        else 
            app_response(message: 'Something went wrong when trying to create your recipe', status: :unprocessable_entity, data: recipe.errors)
        end
    end

    def destroy
        # check whether the task exists
        recipe = Recipe.find_by(id:params[:id])
       
       #  delete the task
       if recipe
           recipe.destroy
           head :no_content
       #  return a not found user
       else 
           render json: {error: 'Recipe not found'}, status: not_found
       end
       end

    private 
    def recipe_params
        params.permit(:title, :instructions, :ingredients, :prep_time)
    end
end
