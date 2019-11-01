class TasklistController < ApplicationController
    def display_tasklist
        @task_lists = TaskList.all
        @task_list_third = TaskList.find_by(title: "TaskList 2")
        render "tasklist.html.erb"
    end

    def tasklist_details
        @id = params[:id].to_i
        @tasklist_detail = TaskList.find @id
        @title = @tasklist_detail.title
        render "tasklist_details.html.erb"
    end
end
