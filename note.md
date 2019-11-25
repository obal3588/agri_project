```
<!-- 
    <% @users.each do |user|%>
      <h1><%= user.email %></h1>
      <%= link_to  "make emp", makeEmp_path(user.id) %>
    <%end%> -->

    ```
<%= link_to  "make emp", admin_makeemp_pathc(user.id) %>


    class AdminsController < ApplicationController
  def show
    @users = User.all
  end

  def makeEmp
    @user = User.find(params[:format])
    @user.update(emp: true)
  end
end
