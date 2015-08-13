class WorkspacesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  def index
    # workspaces sorted by top rating

  @category = params[:category]
  @location = params[:location]

  @workspaces = Workspace

  if @category
    @workspaces = @workspaces.where(category: @category)
  end

  if @location
    @workspaces = @workspaces.where("address like '%#{@location}%'")
  end

  if @workspaces == Workspace
    @workspaces = Workspace.all
  end

  @workspaces = @workspaces.sort_by { |w| w.average_rating }.reverse

    # workspaces sorted by category
  # @workspaces = Workspace.all.sort_by { |w| w.category }

  # @search = Workspace.new(params[:workspace])
  # @workspaces = Workspace.address[@search.address]

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
