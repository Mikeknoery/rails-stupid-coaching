class PagesController < ApplicationController
  def ask
  end

  def answer
    if params[:ask]
      @ask = params[:ask]
      if @ask.include?('?')
        @answer = 'Silly question, get dressed and go to work!'
      elsif @ask.include?('I am going to work')
        @answer = 'Great!'
      else
        @answer = 'I don\'t care, get dressed and go to work!'
      end
    end
  end
end
