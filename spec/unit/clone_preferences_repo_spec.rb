require 'unit/spec_helper'
require 'pry'

describe 'sprout-jetbrains-editors::clone_preferences_repository' do
  let(:runner) { ChefSpec::SoloRunner.new }

  it 'clones the pivotal_ide_prefs repository' do
    runner.converge(described_recipe)
    expect(runner).to sync_git('pivotal_ide_prefs')
  end
end
