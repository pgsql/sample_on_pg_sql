class MemeberShipsController < ApplicationController
  # GET /memeber_ships
  # GET /memeber_ships.xml
  def index
    @memeber_ships = MemeberShip.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @memeber_ships }
    end
  end

  # GET /memeber_ships/1
  # GET /memeber_ships/1.xml
  def show
    @memeber_ship = MemeberShip.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @memeber_ship }
    end
  end

  # GET /memeber_ships/new
  # GET /memeber_ships/new.xml
  def new
    @memeber_ship = MemeberShip.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @memeber_ship }
    end
  end

  # GET /memeber_ships/1/edit
  def edit
    @memeber_ship = MemeberShip.find(params[:id])
  end

  # POST /memeber_ships
  # POST /memeber_ships.xml
  def create
    @memeber_ship = MemeberShip.new(params[:memeber_ship])

    respond_to do |format|
      if @memeber_ship.save
        format.html { redirect_to(@memeber_ship, :notice => 'Memeber ship was successfully created.') }
        format.xml  { render :xml => @memeber_ship, :status => :created, :location => @memeber_ship }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @memeber_ship.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /memeber_ships/1
  # PUT /memeber_ships/1.xml
  def update
    @memeber_ship = MemeberShip.find(params[:id])

    respond_to do |format|
      if @memeber_ship.update_attributes(params[:memeber_ship])
        format.html { redirect_to(@memeber_ship, :notice => 'Memeber ship was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @memeber_ship.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /memeber_ships/1
  # DELETE /memeber_ships/1.xml
  def destroy
    @memeber_ship = MemeberShip.find(params[:id])
    @memeber_ship.destroy

    respond_to do |format|
      format.html { redirect_to(memeber_ships_url) }
      format.xml  { head :ok }
    end
  end
end
