class AuthController < ApplicationController
  layout 'auth'

  def index
  end

  def register
  end

  def create
    @admin = Admin.new(admin_params)

    respond_to do |format|
      if @admin.save
        format.html { redirect_to '/', notice: "Item was successfully created." }
        format.json { render :show, status: :created, location: @admin }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end

  def postLogin
    user = Admin.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      session[:user_name] = user.name
      redirect_to '/dashboard'
    else
      flash[:notice] = "Invalid email or password"
      redirect_to '/'
    end
  end

  def postLogout
    session[:user_id] = nil
    redirect_to '/'
  end
end
