module Api
  class RecipesController < ActionController::API
    def create
      binding.pry
    end

    private 

    def recipe_params
      # whitelisted params
      params.require(:data).require(:attributes).permit(:title, :steps)
    end
  end
end