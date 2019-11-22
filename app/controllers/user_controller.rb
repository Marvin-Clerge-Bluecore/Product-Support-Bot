class UserController < ApplicationController
  def index
    @users = User.all
  end

  def update
    @users = User.all
    @users.each do |user|
      if params.key?("#{user.id}_status")
        user.update(status: params["#{user.id}_status"])
      end
    end
    redirect_to user_path
  end

  # • Get the current time in UTC
  # • Determine if the next agent is late or off (needs to be skip)
  # • Update the 'escalated' status of the two users (escalated:true means that user was the last escalation)
  # • Create logic for no users having 'escalated'
  # • Return JSON for the next user that will be escalted

  def escalate
    us_time = Time.now.in_time_zone('Eastern Time (US & Canada)')
    hour = us_time.strftime('%H')

    User.all.each do |user|
    end

    @user = User.find_by(escalated: true)
    if @user.id == User.maximum(:id)
      @next_user = User.find(User.minimum(:id))
    else
      @next_user = User.find(@user.id + 1)
    end

    binding.pry

    # @user = User.find_by(escalated: true)
    # @next_user = User.find(++@user.id)

    # #  needs to be a loop untill a user is founc
    # #  create a condintion that ends the loop after a number of iterations
    # if @next_user.status == 'off'
    #   @next_user = User.find(@next)
    # end
    
    # @user.update(escalated: false)
    # @user2.update(escalated: true)

    # render :json => @user2
  end
end
