# frozen_string_literal: true

require 'test_helper'

module Travis
  module Release
    class TaskTest < MiniTest::Test
      def test_defaults_name_to_release
        assert_equal :release, Task.new.name
      end

      def test_allows_customization_of_task_name
        assert_equal :task_name, Task.new(:task_name).name
      end

      def test_installs_to_rakefile
        assert_raises(RuntimeError) { Rake::Task['release'] }
        assert Task.new.install
        refute_nil Rake::Task['release']
      end
    end
  end
end
