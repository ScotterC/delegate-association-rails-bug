class SeoMetaController < ApplicationController
  # GET /seo_meta
  # GET /seo_meta.json
  def index
    @seo_meta = SeoMetum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @seo_meta }
    end
  end

  # GET /seo_meta/1
  # GET /seo_meta/1.json
  def show
    @seo_metum = SeoMetum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @seo_metum }
    end
  end

  # GET /seo_meta/new
  # GET /seo_meta/new.json
  def new
    @seo_metum = SeoMetum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @seo_metum }
    end
  end

  # GET /seo_meta/1/edit
  def edit
    @seo_metum = SeoMetum.find(params[:id])
  end

  # POST /seo_meta
  # POST /seo_meta.json
  def create
    @seo_metum = SeoMetum.new(params[:seo_metum])

    respond_to do |format|
      if @seo_metum.save
        format.html { redirect_to @seo_metum, :notice => 'Seo metum was successfully created.' }
        format.json { render :json => @seo_metum, :status => :created, :location => @seo_metum }
      else
        format.html { render :action => "new" }
        format.json { render :json => @seo_metum.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /seo_meta/1
  # PUT /seo_meta/1.json
  def update
    @seo_metum = SeoMetum.find(params[:id])

    respond_to do |format|
      if @seo_metum.update_attributes(params[:seo_metum])
        format.html { redirect_to @seo_metum, :notice => 'Seo metum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @seo_metum.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /seo_meta/1
  # DELETE /seo_meta/1.json
  def destroy
    @seo_metum = SeoMetum.find(params[:id])
    @seo_metum.destroy

    respond_to do |format|
      format.html { redirect_to seo_meta_url }
      format.json { head :no_content }
    end
  end
end
