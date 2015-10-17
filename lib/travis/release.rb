require 'travis/release/version'
require 'travis/release/task'

module Travis
  # Adds a +:release+ task for releasing gems on Travis CI.
  module Release
    # Return the version.
    def self.version
      VERSION
    end
  end
end
