require 'spec_helper'
require 'travis/release/task'

module Travis
  module Release
    RSpec.describe Task do
      context 'with a name passed to the constructor' do
        let(:task) { Task.new(:task_name) }

        it 'correctly sets the name' do
          expect(task.name).to eq :task_name
        end
      end

      it 'defaults name to :release' do
        expect(subject.name).to eq :release
      end

      it 'installs tasks to rakefile' do
        expect(subject.install).to be_a(Rake::Task)
      end
    end
  end
end
