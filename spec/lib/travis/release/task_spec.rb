require 'spec_helper'
require 'travis/release/task'

module Travis
  module Release
    RSpec.describe Task do
      let :custom do
        Task.new :custom
      end

      it 'defaults name to :release' do
        expect(subject.name).to eq :release
      end

      it 'can customize name' do
        expect(custom.name).to eq :custom
      end

      it 'installs tasks to rakefile' do
        expect(subject.install).to be true
      end
    end
  end
end
