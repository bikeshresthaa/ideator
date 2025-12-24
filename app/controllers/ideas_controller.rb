class IdeasController < ApplicationController
  def index
    @pagy, @ideas = pagy(Idea.order("created_at DESC"))
  end

  def create
    @idea = Idea.create(idea_params)
    if @idea.valid?
      flash[:success] = "Idea posted successfully!"
    else
      flash[:alert] = "Woops! Looks like something went wrong."
    end
    redirect_to root_path
  end

  def edit
    @idea = Idea.find(params[:id])
  end

  def update
    @idea = Idea.find(params[:id])
    if @idea.update(idea_params)
      flash[:success] = "The idea was updated successfully!"
      redirect_to root_path
    else
      flash[:alert] = "Woops! Looks like something went wrong."
      redirect_to edit_idea_path(params[:id])
    end
  end

  def destroy
    @idea = Idea.find(params[:id])
    @idea.destroy
    flash[:success] = "The idea was deleted successfully!"
    redirect_to root_path
  end

  private

  def idea_params
    params.require(:idea).permit(:description, :author)
  end
end
