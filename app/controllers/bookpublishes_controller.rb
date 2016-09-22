class BookpublishesController < ApplicationController
  before_action :set_bookpublish, only: [:show, :edit, :update, :destroy]

  # GET /bookpublishes
  # GET /bookpublishes.json
  def index
    @bookpublishes = Bookpublish.all
  end

  # GET /bookpublishes/1
  # GET /bookpublishes/1.json
  def show
  end

  # GET /bookpublishes/new
  def new
    @bookpublish = Bookpublish.new
  end

  # GET /bookpublishes/1/edit
  def edit
  end

  # POST /bookpublishes
  # POST /bookpublishes.json
  def create
    @bookpublish = Bookpublish.new(bookpublish_params)

    respond_to do |format|
      if @bookpublish.save
        format.html { redirect_to @bookpublish, notice: 'Bookpublish was successfully created.' }
        format.json { render :show, status: :created, location: @bookpublish }
      else
        format.html { render :new }
        format.json { render json: @bookpublish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookpublishes/1
  # PATCH/PUT /bookpublishes/1.json
  def update
    respond_to do |format|
      if @bookpublish.update(bookpublish_params)
        format.html { redirect_to @bookpublish, notice: 'Bookpublish was successfully updated.' }
        format.json { render :show, status: :ok, location: @bookpublish }
      else
        format.html { render :edit }
        format.json { render json: @bookpublish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookpublishes/1
  # DELETE /bookpublishes/1.json
  def destroy
    @bookpublish.destroy
    respond_to do |format|
      format.html { redirect_to bookpublishes_url, notice: 'Bookpublish was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookpublish
      @bookpublish = Bookpublish.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bookpublish_params
      params.require(:bookpublish).permit(:book_id,:publisher_id)
    end
end
