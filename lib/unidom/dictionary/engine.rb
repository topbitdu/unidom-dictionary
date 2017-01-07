module Unidom
  module Dictionary

    class Engine < ::Rails::Engine

      include Unidom::Common::EngineExtension

      isolate_namespace Unidom::Dictionary

      enable_initializer enum_enabled: false, migration_enabled: true

    end

  end
end
