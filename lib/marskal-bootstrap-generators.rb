require 'rails'

module Marskal
  module Bootstrap
    module Generators
      class Engine < ::Rails::Engine
        config.app_generators.stylesheets false  #i THINK PREVENTS default stylesheets from generating
        # initializer 'bootstrap-generators.setup', group: :all do |app|
        #   app.config.assets.paths << ::File.expand_path('../../vendor/twitter/bootstrap/sass', __FILE__) if app.config.respond_to?(:sass)
        #
        #   app.config.assets.paths << ::Rails.root.join('app', 'assets', 'fonts')
        #
        #   app.config.assets.precompile << /\.(?:svg|eot|woff|woff2|ttf)$/
        # end
      end
    end
  end
end
