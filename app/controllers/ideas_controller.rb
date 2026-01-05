class IdeasController < ApplicationController
  before_action :authenticate_user!
  before_action :set_idea, only: [ :show, :edit, :update, :destroy ]

  # GET all ideas belonging to current user
  def index
    @ideas = current_user.ideas
  end

  # GET /ideas/1 or /ideas/1.json
  def show
  end

  # GET /ideas/new
  def new
    @idea = Idea.new
  end

  # GET /ideas/1/edit
  def edit
  end

  # POST /ideas or /ideas.json
  def create
    @idea = current_user.ideas.build(idea_params)

    if @idea.save
      redirect_to @idea, notice: "Idea created!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ideas/1 or /ideas/1.json
  def update
    respond_to do |format|
      if @idea.update(idea_params)
        format.html { redirect_to @idea, notice: "Idea was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @idea }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @idea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ideas/1 or /ideas/1.json
  def destroy
    @idea.destroy!

    respond_to do |format|
      format.html { redirect_to ideas_path, notice: "Idea was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_idea
      @idea = current_user.ideas.find(params[:id])
    end
    # Only allow a list of trusted parameters through.
    def idea_params
      params.expect(idea: [ :title, :description, :rating, :user_id ])
    end
end
