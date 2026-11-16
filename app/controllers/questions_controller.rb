class QuestionsController < ApplicationController
  def ask
    # Cette action ne fait qu'afficher la vue ask.html.erb, donc elle peut rester vide
  end

  def answer
    @question = params[:question]   # On récupère ce que l'utilisateur a tapé dans le formulaire

    if @question == "I am going to work"          # Cas 1 : la question exacte
      @answer = "Great!"                          # Réponse pour le cas 1
    elsif @question.end_with?("?")                # Cas 2 : la question finit par "?"
      @answer = "Silly question, get dressed and go to work!"  # Réponse pour le cas 2
    else                                          # Cas 3 : tout le reste
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
