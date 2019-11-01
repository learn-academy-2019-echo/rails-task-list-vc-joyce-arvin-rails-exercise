class TasklistController < ApplicationController
    def display_tasklist
        @task_lists = TaskList.all
        render "tasklist.html.erb"
    end

    def tasklist_details
        @id = params[:id].to_i
        @tasklist_detail = TaskList.find_by(id: @id)
        @title = @tasklist_detail.title
        @description = @tasklist_detail.description
        render "tasklist_details.html.erb"
    end
end
