class AgreementController < ApplicationController
  include Wicked::Wizard

  steps :team, :product

  def show
    # search for a session hash
    session[:agreement] = session[:agreement] ? session[:agreement] : SecureRandom.hex
    # set the token variable with this session
    token = session[:agreement]
    if Agreement.find_by(token: token)
     @agreement = Agreement.find_by(token: token)
    else
     @agreement = Agreement.new(token: token)
    end

    render_wizard
  end

  def update
    # search for a session hash
    session[:agreement] = session[:agreement] ? session[:agreement] : SecureRandom.hex
    # set the token variable with this session
    token = session[:agreement]
    if Agreement.find_by(token: token)
      # set value for the @ variable and after this update values without saving
      @agreement = agreement = Agreement.find_by(token: token)
      agreement.assign_attributes(agreement_params)
    else
      @agreement = Agreement.new(agreement_params.merge(token: token))
    end
    render_wizard(@agreement)
  end

  private

  def finish_wizard_path
    agreement_path(@agreement)
  end

  def agreement_params
    params.require(:agreement).permit(:title, :description, :domain,
                                      roles_attributes: [:id, :full_name, :email,
                                                         :full_address, :id_number, :role,
                                                         :_destroy])
  end
end
