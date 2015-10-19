require 'rails/generators'

module Marskal
  module Bootstrap
    module Generators
      class InstallGenerator < ::Rails::Generators::Base
        desc 'Copy BootstrapGenerators default files'
        source_root ::File.expand_path('../templates', __FILE__)

        def copy_lib
          directory "lib/templates/erb"
        end

        def copy_form_builder
          copy_file "form_builders/form_builder/_form.html.erb", "lib/templates/erb/scaffold/_form.html.erb"
        end

        def create_layout
        end

        def create_stylesheets
          copy_file "assets/stylesheets/starter.scss", "app/assets/stylesheets/marskal-bootstrap-generators.scss"
        end

      end
    end
  end
end
