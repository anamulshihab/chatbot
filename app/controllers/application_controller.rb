class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def ask_chiquito
    reaction = CHIQUIBOT.get_reaction(params[:query])    
    render json: { response: reaction.present? ? reaction : 'Sorry i cant answer that!!' }
  end

   def ask_estonian
	reaction = CHATBOT.get_reaction(params[:query])    
    render json: { response: reaction.present? ? reaction : 'Sorry i cant ans that!!' }
  end
end
