class SellersController < ApplicationController
  before_action :set_seller, only: %i[ show edit update destroy ]

  # GET /sellers or /sellers.json
  def index
    @sellers = Seller.all
  end

  # GET /sellers/1 or /sellers/1.json
  def show
  end
	
  # GET /sellers/new
  def new
    @seller = Seller.new
	@seller.seller_id=current_user.id
    @seller.user_id=current_user.id
  end

  # GET /sellers/1/edit
  def edit
  end
	
  def homepage_seller
	  @seller = Seller.find(params[:seller_id])
  end
	
  def makerpage_seller
	  @seller = Seller.find(params[:seller_id])
  end

  # POST /sellers or /sellers.json
  def create
    @seller = Seller.new(seller_params)

    respond_to do |format|
      if @seller.save
        format.html { redirect_to seller_url(@seller), notice: "Seller was successfully created." }
        format.json { render :show, status: :created, location: @seller }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @seller.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sellers/1 or /sellers/1.json
  def update
    respond_to do |format|
      if @seller.update(seller_params)
        format.html { redirect_to seller_url(@seller), notice: "Seller was successfully updated." }
        format.json { render :show, status: :ok, location: @seller }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @seller.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sellers/1 or /sellers/1.json
  def destroy
    @seller.destroy

    respond_to do |format|
      format.html { redirect_to sellers_url, notice: "Seller was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seller
      @seller = Seller.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def seller_params
      params.require(:seller).permit(:seller_id, :user_id, :registration_num, :company_name, :ceo_name, :company_address, :ceo_email, :ceo_num)
    end
end
