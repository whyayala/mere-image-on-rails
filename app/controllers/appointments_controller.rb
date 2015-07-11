class AppointmentsController < ApplicationController
  # before_action :authenticate_user!
  before_action :authenticate_admin!

  def index
  	@appointments = Appointment.all
  end

  def new
  	@appointment = Appointment.new
  end

  def create
  	@appointment = Appointment.new(article_params)
  	if @appointment.save
  		redirect_to @appointment
  	else
  		render 'new'
  	end
  end

  def edit
  	@appointment = Appointment.find(params[:id])
  end

  def update
    @appointment = Appointment.find(params[:id])
  
    if @appointment.update(appointment_params)
      redirect_to @appointment
    else
      render 'edit'
    end
  end

  def show
  	@appointment = Appointment.find(params[:id])
  end

  def destroy
  	@appointment = Appointment.find(params[:id])
  	@appointment.destroy
  
  	redirect_to appointments_path
  end

  private
  	def appointment_params
  		params.require(:appointment).permit(:time, :type)
  	end
  
end