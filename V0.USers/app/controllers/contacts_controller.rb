class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy, :switch_fav]

  def sort_type
    cookies[:sort_contacts] = params[:type]
    redirect_to contacts_url
  end

  def switch_fav
    if @contact.state == "seen"
      @contact.state = "fav"
    else
      @contact.state = "seen"
    end
    @contact.save
    redirect_to @contact
  end


  # GET /contacts
  # GET /contacts.json
  def index
    @contacts = Contact.all.order(created_at: :desc)
    if cookies[:sort_contacts] == "Last" || cookies[:sort_contacts] == nil
      @contacts = @contacts.order({created_at: :desc}, :sender)  
    elsif cookies[:sort_contacts] == "First" 
      @contacts = @contacts.order(:created_at).reverse
    elsif cookies[:sort_contacts] == "Random" 
      @contacts = @contacts.shuffle 
    elsif cookies[:sort_contacts] == "New"
      @contacts = @contacts.where("state = 'new'")
    elsif cookies[:sort_contacts] == "Fav"
      @contacts = @contacts.where("state = 'fav'")
    else
      #filters label section
      @contacts = @contacts.where("aim = '#{cookies[:sort_contacts]}'")
    end
  end

  # GET /contacts/1
  # GET /contacts/1.json
  def show
    @contact.read
    @contact.save
    @sender = User.find_by(pseudo: @contact.sender)
  end

  # GET /contacts/new
  def new
    @contact = Contact.new
  end

  # GET /contacts/1/edit
  def edit
  end

  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(contact_params)
    @contact.sender = current_user.pseudo
    @contact.state = "new"

    respond_to do |format|
      if @contact.save
        format.html { redirect_to session[:previous_request_url], notice: 'Contact was successfully created.' }
        format.json { render :show, status: :created, location: @contact }
      else
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contacts/1
  # PATCH/PUT /contacts/1.json
  def update
    respond_to do |format|
      if @contact.update(contact_params)
        format.html { redirect_to @contact, notice: 'Contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @contact }
      else
        format.html { render :edit }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contacts/1
  # DELETE /contacts/1.json
  def destroy
    @contact.destroy
    respond_to do |format|
      format.html { redirect_to contacts_path, notice: 'Contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.fetch(:contact, {}).permit(:object, :content)
    end
end
