class ClassifiedsController < ApplicationController
  before_action :set_classified, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /classifieds
  # GET /classifieds.json
  def index
    @classifieds = Classified.where.not(user_id: current_user)
    @categories = Category.all
    
  end

  # GET /classifieds/1
  # GET /classifieds/1.json
  def show
    @cl = Classified.find(params[:id])
    @user = User.find(@cl.user_id)
    #@conversations = Conversation.involving(current_user).order("created_at DESC")
  end

  # GET /classifieds/new
  def new
    @classified = Classified.new
  end

  # GET /classifieds/1/edit
  def edit
  end

  # POST /classifieds
  # POST /classifieds.json
  def create
    #@classified = Classified.new(classified_params)
    @classified = current_user.classifieds.new(classified_params)

    respond_to do |format|
      if @classified.save
        format.html { redirect_to @classified, notice: 'Classified was successfully created.' }
        format.json { render :show, status: :created, location: @classified }
      else
        format.html { render :new }
        format.json { render json: @classified.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /classifieds/1
  # PATCH/PUT /classifieds/1.json
  def update
    respond_to do |format|
      if @classified.update(classified_params)
        format.html { redirect_to @classified, notice: 'Classified was successfully updated.' }
        format.json { render :show, status: :ok, location: @classified }
      else
        format.html { render :edit }
        format.json { render json: @classified.errors, status: :unprocessable_entity }
      end
    end
  end

  def search
    #  if params[:keywords].present?
      #@keywords = params[:keywords]
      @classifieds = Classified.ransack(title_cont: params[:q]).result(distinct: true).limit(5)
      @categories = Category.ransack(name_cont: params[:q]).result(distinct: true).limit(5)
     
      respond_to do |format|
        format.html {}
        format.json {
          @classifieds = @classifieds.limit(5)
          @categories = @categories.limit(5)
        }
      end
     
  end


private 
def force_json
  request.format = :json
end
  # DELETE /classifieds/1
  # DELETE /classifieds/1.json
  def destroy
    @classified.destroy
    respond_to do |format|
      format.html { redirect_to classifieds_url, notice: 'Classified was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_classified
      @classified = Classified.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def classified_params
      params.require(:classified).permit(:title, :description, :price, :location,:category_id,{images: []}, :images_cache)
    end
end
