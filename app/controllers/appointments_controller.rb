class AppointmentsController < ApplicationController
  # before_action :authenticate_user! || :authenticate_admin!
  before_filter :find_appointment, :only => [:edit, :update, :show, :destroy]
  
  def index
  	@appointments = Appointment.all
  end

  def new
  	@appointment = Appointment.new
  end

  def create
  	@appointment = Appointment.new(appointment_params)
    @appointment.user = current_user  	
    if @appointment.save
  		redirect_to @appointment
  	else
  		render 'new'
  	end
  end

  def edit
  end

  def update
    if @appointment.update(appointment_params)
      redirect_to @appointment
    else
      render 'edit'
    end
  end

  def show
  end

  def destroy
  	@appointment.destroy
  	redirect_to appointments_path
  end

  private
  	def appointment_params
  		params.require(:appointment).permit(:appointment_type)
  	end

  private
    def find_appointment
      @appointment = Appointment.find(params[:id])
    end

end