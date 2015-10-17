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
      #
      # @return [Rake::Task]
      def install
        clear_old_task && define_new_task
      end

      private

      # @private
      def clear_old_task
        Rake::Task[name.to_s].clear
      rescue
        true
      end

      # @private
      def define_new_task
        desc 'Build and push this gem to RubyGems via Travis CI'
        task name => %w(
          build release:guard_clean release:source_control_push
        ) do
          Bundler.ui.confirm message
        end
      end

      # @private
      def message
        'Please wait for the gem to deploy to RubyGems on Travis CI'
      end
    end
  end
end
