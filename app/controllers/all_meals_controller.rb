class AllMealsController < OpenReadController
  before_action :set_all_meal, only: [:show, :update, :destroy]

  # GET /all_meals
  def index
    @all_meals = AllMeal.all

    render json: @all_meals
  end

  # GET /all_meals/1
  def show
    render json: @all_meal
  end

  # POST /all_meals
  def create
    #@all_meal = AllMeal.new(all_meal_params)
    @all_meal = current_user.all_meals.build(all_meal_params)

    if @all_meal.save
      render json: @all_meal, status: :created, location: @all_meal
    else
      render json: @all_meal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /all_meals/1
  def update
    if @all_meal.update(all_meal_params)
      render json: @all_meal
    else
      render json: @all_meal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /all_meals/1
  def destroy
    @all_meal.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_all_meal
      @all_meal = AllMeal.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def all_meal_params
      params.require(:all_meal).permit(:meal, :breakfast, :lunch, :dinner, :user_id)
    end
end
