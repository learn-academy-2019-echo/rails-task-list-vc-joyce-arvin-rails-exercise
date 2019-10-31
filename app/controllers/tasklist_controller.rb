class TasklistController < ApplicationController
    def display_tasklist
        @list = TaskList.all

        render "tasklist.html.erb"
    end
end
