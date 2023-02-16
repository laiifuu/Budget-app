class EntitiesController < ApplicationController
  before_action :set_entity, only: %i[show edit update destroy]
  before_action :authenticate_user!

  # GET /entities/new
  def new
    @entity = Entity.new
    @groups = Group.where(user: current_user)
    @expense = @entity.expenses.build
  end

  # POST /entities or /entities.json
  def create
    @entity = Entity.new(entity_params)

    respond_to do |format|
      if @entity.save
        format.html { redirect_to group_path(@entity.expenses[0].group_id), notice: 'Entity was successfully created.' }
        format.json { render :show, status: :created, location: @entity }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_entity
    @entity = Entity.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def entity_params
    params.require(:entity).permit(:name, :author_id, :amount, expenses_attributes: [:group_id])
  end
end
