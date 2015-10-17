require 'rake'

module Travis
  module Release
    # The Rake task used to release your gem.
    class Task
      include Rake::DSL

      attr_reader :name

      # @param [Symbol] name - The name of this Rake task.
      def initialize(name = :release)
        @name = name
        install
      end

      # When +install_tasks!+ is invoked, create a +:release+ task in the
      # Rakefile.
      def install
        Rake::Task[name.to_s].clear

        desc 'Build and push this gem to RubyGems via Travis CI'
        task name => %w(
          build release:guard_clean release:source_control_push
        ) do
          Bundler.ui.confirm %(
            Please wait for the gem to deploy to RubyGems on Travis CI
          )
        end
      end
    end
  end
end
