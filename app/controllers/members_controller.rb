class MembersController < ApplicationController

  # GET /members
  def index
    @members = Member
                .select('members.name as name', 'members.email as email', 'members.phone as phone','subscriptions.name as sub')
                .joins(:subscription)

    render json: @members
  end

end
