class ApplicationsController < ApplicationController
  layout false

  def create
    @application = Application.new(application_params)
    @season = @application.season
    @success = @application.save
  end

  private

  def application_params
    return {} unless params[:application]
    params.require(:application).permit(
      :first_name, :last_name, :email, :mobile_phone, :interest, :season_id
    )
  end
end
