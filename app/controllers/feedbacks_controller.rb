class FeedbacksController < ApplicationController

  before_action :set_feedback_columns, only: [:new, :create]
  before_action :set_question_array, only: [:new, :create]
  before_action :set_user_to_feedback, only: [:new, :user_feedback_list]

  def index
    @usersFeedback = User.where('manager_id == ?', current_user.id)
  end

  def show

  end

  def new
    @feedback = Feedback.new

  end

  def create
    @feedback = Feedback.new(set_feedback_params)
    @feedback.manager_id = current_user.id
    if @feedback.save
      redirect_to feedbacks_url, notice: 'Feedback was successfully created.'
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def user_feedback_list
    @feedbacks = Feedback.where(user_id: params[:user_id])



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

  def set_user_to_feedback
    @user = User.find(params[:user_id])
  end
end
