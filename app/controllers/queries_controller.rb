class QueriesController < ApplicationController

  def create
    @query = Query.create
    redirect_to @query
  end

  def show
    @query = Query.find(params[:id])
  end

  def respond_to
    @query = Query.find(params[:id])
    @question = Question.find(params[:question_id])
    @query.answer_question!(@question, params[:value].to_i)
    redirect_to @query
  end
  
end
