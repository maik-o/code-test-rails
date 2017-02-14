class MembersController < ApplicationController

  # GET /members
  def index
    @members = Member
                .select('members.*', 'subscriptions.name as subscription_level')
                .joins(:subscription)

    render json: @members
  end

end
