class AnswersController < ApplicationController
    before_action :find_question
    before_action :find_answer, only: [:edit, :update, :destroy]
    before_action :authenticate_user!
    
    def create
        @answer = @question.answers.create(answer_params)
        @answer.user_id = current_user.id
        
        if @answer.save
            redirect_to question_path(@question)
        else
            render 'new'
        end
    end
    
    def edit
    end
    
    def update
        if @answer.update(answer_params)
            redirect_to question_path(@question)
        else
            render 'edit'
        end
    end
    
    def destroy
        @answer.destroy
        redirect_to question_path(@question)
    end

    private
    
    def answer_params
        params.require(:answer).permit(:content)
    end
    
    def find_question
        @question = Question.find(params[:question_id])
    end
    
    def find_answer
        @answer = @question.answers.find(params[:id])
    end
end
