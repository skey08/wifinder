class ReviewsController < ApplicationController
  def create
    @review = Review.create(review_params)
    workspace = @review.workspace

    redirect_to workspace
  end

  def destroy
    @review = Review.find(params[:id])
    workspace = @review.workspace
    @review.destroy

    redirect_to workspace
  end

  private
  def review_params
    params.require(:review).permit(:star, :comment, :workspace_id, :user_id)
  end
end
