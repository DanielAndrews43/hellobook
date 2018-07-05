require "hbc/cli/abstract_command"

module Hbc
  class CLI
    module Compat
      class Update < AbstractCommand
        def run
          odisabled "`brew cask update`", "`brew update`"
        end

        def self.visible
          false
        end
      end
    end

    prepend Compat
  end
end
