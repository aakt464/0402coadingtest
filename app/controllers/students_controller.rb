class StudentsController < ApplicationController

    def index
        @student=Student.all
    end

    def create
        student = Student(tweet_params)
        if student.save
            redirect_to :action => "index"
        else
            redirect_to :action => "index"
        end
    end

    private
    def tweet_params
        params.require(:tweet).permit(:body)
    end


end
