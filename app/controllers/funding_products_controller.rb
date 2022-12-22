class FundingProductsController < ApplicationController
  before_action :set_funding_product, only: %i[ show edit update destroy ]

  # GET /funding_products or /funding_products.json
  def index
    @funding_products = FundingProduct.all
  end

  # GET /funding_products/1 or /funding_products/1.json
  def show
  end

  # GET /funding_products/new
  def new
    @funding_product = FundingProduct.new
	@funding_product.seller_id_id=current_user.id
  end

  # GET /funding_products/1/edit
  def edit
  end

  # POST /funding_products or /funding_products.json
  def create
    @funding_product = FundingProduct.new(funding_product_params)

    respond_to do |format|
      if @funding_product.save
		format.html { redirect_to funding_product_url(@funding_product), notice: "펀딩 오픈 성공" }
		#format.html { redirect_to controller: 'rewards', action: 'new', id: @funding_product.id }
		#format.html { redirect_to funding_products_rewardpage_url(funding_product_id:@funding_product.id), notice: "리워드를 추가해주세요." }
        #format.html { redirect_to funding_products_rewardpage_url(@reward), notice: "리워드를 추가해주세요." }
        format.json { render :show, status: :created, location: @reward.new }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @funding_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /funding_products/1 or /funding_products/1.json
  def update
    respond_to do |format|
      if @funding_product.update(funding_product_params)
        format.html { redirect_to funding_product_url(@funding_product), notice: "Funding product was successfully updated." }
        format.json { render :show, status: :ok, location: @funding_product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @funding_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /funding_products/1 or /funding_products/1.json
  def destroy
    @funding_product.destroy

    respond_to do |format|
      format.html { redirect_to funding_products_url, notice: "Funding product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_funding_product
      @funding_product = FundingProduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def funding_product_params
      params.require(:funding_product).permit(:product_id,:seller_id_id, :avatar, :category_id, :title, :deadline, :achieve_rate, :achieve_money, :supporters_number, :brand, :product_detail)
    end
end
