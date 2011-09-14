class MoshikomisController < ApplicationController
  # GET /moshikomis
  # GET /moshikomis.xml

  def start
  end

  def search
    @kensaku = Hash.new
    @kensaku[:start_date] = Date.new
    @kensaku[:start_end] = Date.new
    @kensaku[:commentstart_end] = Date.new
    @moshikomis = Moshikomi.all
  end

  # GET /moshikomis/1
  # GET /moshikomis/1.xml
  def show
    @moshikomi = Moshikomi.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @moshikomi }
    end
  end

  # GET /moshikomis/new
  # GET /moshikomis/new.xml
  def new
    @moshikomi = Moshikomi.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @moshikomi }
    end
  end

  # GET /moshikomis/1/edit
  def edit
    @moshikomi = Moshikomi.find(params[:id])
  end

  # POST /moshikomis
  # POST /moshikomis.xml
  def create
    @moshikomi = Moshikomi.new(params[:moshikomi])

    respond_to do |format|
      if @moshikomi.save
        format.html { redirect_to(@moshikomi, :notice => 'Moshikomi was successfully created.') }
        format.xml  { render :xml => @moshikomi, :status => :created, :location => @moshikomi }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @moshikomi.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /moshikomis/1
  # PUT /moshikomis/1.xml
  def update
    @moshikomi = Moshikomi.find(params[:id])

    respond_to do |format|
      if @moshikomi.update_attributes(params[:moshikomi])
        format.html { redirect_to(@moshikomi, :notice => 'Moshikomi was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @moshikomi.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /moshikomis/1
  # DELETE /moshikomis/1.xml
  def destroy
    @moshikomi = Moshikomi.find(params[:id])
    @moshikomi.destroy

    respond_to do |format|
      format.html { redirect_to(moshikomis_url) }
      format.xml  { head :ok }
    end
  end
end
