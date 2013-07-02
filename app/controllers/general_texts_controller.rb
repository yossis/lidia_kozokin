class GeneralTextsController < ApplicationController
  # GET /general_texts
  # GET /general_texts.json
  def index
    @general_texts = GeneralText.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @general_texts }
    end
  end

  # GET /general_texts/1
  # GET /general_texts/1.json
  def show
    @general_text = GeneralText.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @general_text }
    end
  end

  # GET /general_texts/new
  # GET /general_texts/new.json
  def new
    @general_text = GeneralText.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @general_text }
    end
  end

  # GET /general_texts/1/edit
  def edit
    @general_text = GeneralText.find(params[:id])
  end

  # POST /general_texts
  # POST /general_texts.json
  def create
    @general_text = GeneralText.new(params[:general_text])

    respond_to do |format|
      if @general_text.save
        format.html { redirect_to @general_text, notice: 'General text was successfully created.' }
        format.json { render json: @general_text, status: :created, location: @general_text }
      else
        format.html { render action: "new" }
        format.json { render json: @general_text.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /general_texts/1
  # PUT /general_texts/1.json
  def update
    @general_text = GeneralText.find(params[:id])

    respond_to do |format|
      if @general_text.update_attributes(params[:general_text])
        format.html { redirect_to @general_text, notice: 'General text was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @general_text.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /general_texts/1
  # DELETE /general_texts/1.json
  def destroy
    @general_text = GeneralText.find(params[:id])
    @general_text.destroy

    respond_to do |format|
      format.html { redirect_to general_texts_url }
      format.json { head :no_content }
    end
  end
end
