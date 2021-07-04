class TwitterAccountsController < ApplicationController
    before_action :require_user_logged_in!
    before_action :set_twitter_account, only: [:destroy]
    def index
        @twitter_accounts = Current.user.twitter_accounts
    end

    def destroy
        @twitter_accounts.destroy
        redirect_to twitter_accounts_path, notice: 'Successfully disconnected '+@twitter_accounts.username 
    end

    private

    def set_twitter_account
        @twitter_accounts = Current.user.twitter_accounts.find(params[:id])
    end

end