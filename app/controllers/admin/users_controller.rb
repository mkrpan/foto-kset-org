module Admin
  class UsersController < AuthorizedController
    def index
      @users = user_scope.order(:email)
    end

    def show
      load_user
    end

    def new
      build_user
    end

    def create
      build_user
      save_user || render(:new)
    end

    def edit
      load_user
    end

    def update
      load_user
      build_user
      save_user || render(:edit)
    end

    def destroy
      load_user
      @user.destroy
      redirect_to [:admin, :users]
    end

    private

    def user_params
      return {} unless params[:user]
      params.require(:user).permit(
        :email, :password, :password_confirmation
      )
    end

    def save_user
      return unless @user.save

      redirect_to [:admin, :users]
    end

    def build_user
      @user ||= user.new
      @user.attributes = user_params
    end

    def load_user
      @user = user_scope.find(params[:id])
    end

    def user_scope
      User.all
    end

  end
end
