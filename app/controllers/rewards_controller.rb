class RewardsController < ApplicationController
  before_action :set_reward, only: %i[ show edit update destroy ]

  # GET /rewards or /rewards.json
  def index
    @rewards = Reward.all
  end

  # GET /rewards/1 or /rewards/1.json
  def show
  end

  # GET /rewards/new
  def new
    @reward = Reward.new
  end

  # GET /rewards/1/edit
  def edit
  end

  # POST /rewards or /rewards.json
  def create
    @reward = Reward.new(reward_params)
	@reward = Reward.find(url_sub)
	#reward_params(permit(@funding_product.id))
	  
	#@reward.id = @funding_product.id
	#reward_params={ controller: 'rewards', action: 'show', id: @reward.product_id_id }
	  
	#@funding_product = FundingProduct.find(params[:product_id])
	#@reward.id = @funding_product.id
	#reward_params=(id: @reward.product_id_id)
	#reward_params.find(@funding_product.id)
	  
    respond_to do |format|
      if @reward.save
		format.html { redirect_to rewards_url_path(@reward), notice: "리워드 추가 완료 및 펀딩 오픈 성공" }
		#format.html { redirect_to controller: 'rewards', action: 'show', id: @reward.id }
		#format.html { redirect_to controller: 'rewards', id: @funding_product.id}
        #format.html { redirect_to reward_url(@reward), notice: "리워드 추가 완료 및 펀딩 오픈 성공" }
		#format.html { redirect_to funding_products_rewardpage_path(funding_products), notice: "리워드 추가 완료 및 펀딩 오픈 성공" }
        #format.html { redirect_to funding_product_url(@funding_product), notice: "리워드 추가 완료 및 펀딩 오픈 성공" }
        format.json { render :show, status: :created, location: @reward }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reward.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rewards/1 or /rewards/1.json
  def update
    respond_to do |format|
      if @reward.update(reward_params)
        format.html { redirect_to reward_url(@reward), notice: "Reward was successfully updated." }
        format.json { render :show, status: :ok, location: @reward }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reward.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rewards/1 or /rewards/1.json
  def destroy
    @reward.destroy

    respond_to do |format|
      format.html { redirect_to rewards_url, notice: "Reward was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reward
      @reward = Reward.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reward_params
	  params.require(:reward).permit(:reward_id, :product_id_id, :reward_price, :reward_name, :reward_content)
      #params.require(:reward).permit(:reward_id, :product_id_id, :reward_name, :reward_content, :reward_price, :order_id)
    end
	
	  def url_sub
	@reward = Reward.find(params[:product_id_id])
  end
end
