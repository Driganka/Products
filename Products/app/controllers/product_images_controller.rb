class ProductImagesController < ApplicationController
  before_action :set_image, only: %i[ show edit update destroy ]

  # GET /images or /images.json
  def index
    @product_images = ProductImage.all
  end

  # GET /images/1 or /images/1.json
  def show
  end

  # GET /images/new
  def new
    @product_image = ProductImage.new
  end

  # GET /images/1/edit
  def edit
  end

  # POST /images or /images.json
  def create
    @product_image = ProductImage.new(image_params)

    respond_to do |format|
      if @product_image.save
        format.html { redirect_to image_url(@product_image), notice: "ProductImage was successfully created." }
        format.json { render :show, status: :created, location: @product_image }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /images/1 or /images/1.json
  def update
    respond_to do |format|
      if @product_image.update(image_params)
        format.html { redirect_to image_url(@product_image), notice: "ProductImage was successfully updated." }
        format.json { render :show, status: :ok, location: @product_image }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /images/1 or /images/1.json
  def destroy
    @product_image.destroy

    respond_to do |format|
      format.html { redirect_to images_url, notice: "ProductImage was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image
      @product_image = ProductImage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_image_params
      params.require(:product_image).permit(:image_name, :iimage, :iimage_cache)
    end
end
