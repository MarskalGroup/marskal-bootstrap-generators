require 'rails/generators'

module Marskal
  module Bootstrap
    module Generators
      class InstallGenerator < ::Rails::Generators::Base
        desc 'Copy BootstrapGenerators default files'
        source_root ::File.expand_path('../templates', __FILE__)

        # class_option :template_engine
        # class_option :stylesheet_engine

        def copy_lib
          directory "lib/templates/erb"
        end

        def copy_form_builder
          copy_file "form_builders/form_builder/_form.html.erb", "lib/templates/erb/scaffold/_form.html.erb"
        end

        def create_layout
nav_menu=<<-NAVMENU
  <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <%= link_to "Project name", "#", class: "navbar-brand" %>
      </div>
      <div id="navbar" class="collapse navbar-collapse">
        <ul class="nav navbar-nav">
          <li class="active"><a href="#">Home</a></li>
          <li><a href="#about">About</a></li>
          <li><a href="#contact">Contact</a></li>
          <% if user_signed_in? %>
              <li>
                <%= link_to 'Log Out',  destroy_user_session_path, method: :delete %>
              </li>
          <% end %>
        </ul>
      </div>
    </div>
  </nav>
  <div class="container">
    <% flash.each do |name, msg| %>
      <%= content_tag :div, class: "alert alert-\#{ name == :error ? "danger" : "success" } alert-dismissable", role: "alert" do %>
        <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <%= msg %>
      <% end %>
    <% end %>
NAVMENU
          inject_into_file "app/views/layouts/application.html.erb", "#{nav_menu}\n    ", :before => "<%= yield %>"
          inject_into_file "app/views/layouts/application.html.erb", "\n  </div>\n", :after => "<%= yield %>"
        end

        def create_stylesheets
          copy_file "assets/stylesheets/starter.scss", "app/assets/stylesheets/marskal-bootstrap-generators.scss"

        end

      end
    end
  end
end
