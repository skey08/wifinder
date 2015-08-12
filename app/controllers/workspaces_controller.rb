class WorkspacesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  def index
    @workspaces = Workspace.all
  end

  def new
    @workspace = current_user.workspaces.build
  end

  def create
    @workspace = current_user.workspaces.build(workspace_params)

    if @workspace.save
      redirect_to @workspace
    else
      render 'new'
    end
  end

  def show
    @workspace = Workspace.find(params[:id])

    @review = Review.new
    @reviews = @workspace.reviews

    # check to see if user has left a review
    @hasReview = @reviews.find_by(user_id: current_user.id) if current_user
  end

  def edit

  end

  def update
    if @workspace.update(workspace_params)
			redirect_to @workspace
		else
			render 'edit'
		end
  end

  def destroy

  end

  private
  def workspace_params
  params.require(:workspace).permit(:name, :address, :company_url, :category, :image_url, :hours, :wifi)
  end
end
