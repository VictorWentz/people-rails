class FeedbacksController < ApplicationController

  before_action :set_feedback_columns, only: [:new, :create]
  before_action :set_question_array, only: [:new, :create]

  def index
    @usersFeedback = User.where('manager_id == ?', 2)
  end

  def show

  end

  def new
    @userforfeedback = User.find(params[:user_id])
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.new(set_feedback_params)
    @feedback.user_id = 6
    @feedback.manager_id = 2
    if @feedback.save
      redirect_to feedbacks_path
    else
      render 'new', status: :unprocessable_entity
    end


  end

  private
  def set_feedback_params
    params.require(:feedback).permit(
      :nota_1,
      :nota_2,
      :nota_3,
      :nota_4,
      :nota_5,
      :nota_6,
      :nota_7,
      :nota_8,
      :comments,
      :user_id,
      :manager_id,
    )
  end

  def set_feedback_columns
    @feedbackColumns = Feedback.column_names.select { |column| column.start_with?("nota_")}
  end

  def set_question_array
    @questions = Feedback::QUESTIONS.each
  end
end
