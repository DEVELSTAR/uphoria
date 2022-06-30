class ManShoesController < ApplicationController
  before_action :set_man_shoe, only: %i[ show edit update destroy ]

  # GET /man_shoes or /man_shoes.json
  def index
    @man_shoes = ManShoe.all
  end

  # GET /man_shoes/1 or /man_shoes/1.json
  def show
  end

  # GET /man_shoes/new
  def new
    @man_shoe = ManShoe.new
  end

  # GET /man_shoes/1/edit
  def edit
  end

  # POST /man_shoes or /man_shoes.json
  def create
    @man_shoe = ManShoe.new(man_shoe_params)

    respond_to do |format|
      if @man_shoe.save
        format.html { redirect_to man_shoe_url(@man_shoe), notice: "Man shoe was successfully created." }
        format.json { render :show, status: :created, location: @man_shoe }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @man_shoe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /man_shoes/1 or /man_shoes/1.json
  def update
    respond_to do |format|
      if @man_shoe.update(man_shoe_params)
        format.html { redirect_to man_shoe_url(@man_shoe), notice: "Man shoe was successfully updated." }
        format.json { render :show, status: :ok, location: @man_shoe }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @man_shoe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /man_shoes/1 or /man_shoes/1.json
  def destroy
    @man_shoe.destroy

    respond_to do |format|
      format.html { redirect_to man_shoes_url, notice: "Man shoe was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_man_shoe
      @man_shoe = ManShoe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def man_shoe_params
      params.require(:man_shoe).permit(:title, :cetegory, :lable, :price, :color, :description, :size)
    end
end
