class MembersController < ApplicationController

  # GET /members
  def index
    @members = Member
                .select('members.*', 'subscriptions.name as subscription_level', 'subscriptions.price as subscription_price')
                .joins(:subscription)

    render json: @members
  end

end
