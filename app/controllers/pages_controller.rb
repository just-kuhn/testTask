class PagesController < ApplicationController
  before_action :set_page, only: [:show, :edit, :update, :destroy]

  # GET /pages
  # GET /pages.json
  def index
    @categories = Category.all
    @category = Category.find_by(name: "no-category")
    @pages = Page.all
    @page = Page.new(categories: [Category.default])
    @category_pages = @page.categories.all

  end

  # GET /pages/1
  # GET /pages/1.json
  def show
  end

  # GET /pages/new
  def new
    @page = Page.new

  end

  # GET /pages/1/edit
  def edit
  end

  # POST /pages
  # POST /pages.json
  def create
    @page = Page.new(page_params)


    respond_to do |format|
      if @page.save
        format.html { redirect_to category_page_path(@page.categories.first.friendly_id, @page), notice: 'Page was successfully created.' }
        format.json { render :show, status: :created, location: category_page_path(@page.categories.first.friendly_id, @page) }
      else
        format.html { render :new }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pages/1
  # PATCH/PUT /pages/1.json
  def update
    respond_to do |format|
      if @page.update(page_params)
        format.html { redirect_to category_page_path(@page.categories.first.friendly_id, @page), notice: 'Page was successfully updated.' }
        format.json { render :show, status: :created, location: category_page_path(@page.categories.first.friendly_id, @page) }
      else
        format.html { render :edit }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pages/1
  # DELETE /pages/1.json
  def destroy
    @page.destroy
    respond_to do |format|
      format.html { redirect_to :root, notice: 'Page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page
      @page = Page.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_params
      params.require(:page).permit(:title, :content, :slug, :category_ids => [])
    end
end
