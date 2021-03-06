module Admin
  class SeasonsController < AuthorizedController
    def index
      @seasons = season_scope.order(start_date: :desc, end_date: :desc)
    end

    def show
      load_season
    end

    def new
      build_season
    end

    def create
      build_season
      save_season || render(:new)
    end

    def edit
      load_season
    end

    def update
      load_season
      build_season
      save_season || render(:edit)
    end

    def destroy
      load_season
      @season.destroy
      redirect_to [:admin, :seasons]
    end

    private

    def season_params
      return {} unless params[:season]
      params.require(:season).permit(
        :title, :start_date, :end_date, :type
      )
    end

    def save_season
      return unless @season.save

      redirect_to [:admin, @season]
    end

    def build_season
      @season ||= Season.new
      @season.attributes = season_params
    end

    def load_season
      @season = season_scope.find(params[:id])
    end

    def season_scope
      Season.all
    end

  end
end
