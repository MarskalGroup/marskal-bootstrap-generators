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
          copy_file "form_builders/form_builder/_basic_form_buttons.html.erb", "app/views/shared/_basic_form_buttons.html.erb"
        end

        def create_layout
        end

        def create_stylesheets
          prepend_file 'app/assets/stylesheets/application.scss' do
            "//This is important that this goes before '@import bootstrap-sprockets' \n" \
            "//import overrides to bootstrap sass variables before we include bootstrap\n"\
            "@import 'marskal_template/marskal-template-variables';\n\n"
          end
          append_file 'app/assets/stylesheets/application.scss' do
            "\n//import marskal-template stylesheet\n"\
            "@import 'marskal_template/marskal_template';\n\n"
          end


          directory 'assets/stylesheets/', 'vendor/assets/stylesheets/'

        end

      end
    end
  end
end
