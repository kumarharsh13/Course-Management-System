class SyllabusesController < ApplicationController

    before_action :set_syllabus, only: [:show]

    def new
        @syllabus = Syllabus.new
    end

    def create
        @syllabus = Syllabus.new(syllabus_params)
        if @syllabus.save
            flash[:notice] = "Syllabus for course_id #{@syllabus.course_id} is updated"
                # redirect_to root_path
            redirect_to new_syllabus_path(:course_id => @syllabus.course_id)
        else 
            render 'new'
        end
    end

    def show 
        @syllabus = Syllabus.find_by("course_id = ? ",params[:course_id])
    end

    private

    def set_syllabus
        @syllabus = Syllabus.find_by("course_id = ? ",params[:course_id])
    end

    def syllabus_params
        params.require(:syllabus).permit(:course_id, :module_no, :moudle_name, :video_link)
    end


end
