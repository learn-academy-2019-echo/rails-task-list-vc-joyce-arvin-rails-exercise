class TasklistController < ApplicationController
    def display_tasklist
        @task_lists = TaskList.all
        render "tasklist.html.erb"
    end

    def tasklist_details
        @tasklist_id = params[:id].to_i
        @tasklist = TaskList.find_by(id: @tasklist_id)
        @title = @tasklist.title
        @description = @tasklist.description
        @tasks = @tasklist.tasks
        render "tasklist_details.html.erb"
    end

    def task_details
        @tasklist_id = params[:task_list_id].to_i
        @id = params[:id].to_i
        @tasklist = TaskList.find_by_id (@tasklist_id) 
        @task = @tasklist.tasks.find_by_id(@id) 
        @title = @task.title
        @description = @task.description
        @date_time_create = @task.created_at

        render "task_detail.html.erb"
    end
end
