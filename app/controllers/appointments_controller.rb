class AppointmentsController < ApplicationController
  before_action :authenticate_user!
  before_filter :find_appointment, :only => [:edit, :update, :show, :destroy]
  
  def index
    set_meta_tags title: 'Appointments Page',
                  description: 'Account managers can view and specialists can view all open and scheduled appointments here.',
                  noindex: true
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
  	redirect_to root_path
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
