require 'spec_helper_acceptance'
require_relative './version.rb'

describe 'atom class' do

  context 'basic setup' do
    # Using puppet_apply as a helper
    it 'should work with no errors' do
      pp = <<-EOF

      class { 'atom':
        add_default_plugins => true,
      }

      EOF

      # Run it twice and test for idempotency
      expect(apply_manifest(pp).exit_code).to_not eq(1)
      expect(apply_manifest(pp).exit_code).to eq(0)
    end

    it "check for git-plus" do
      expect(shell("/usr/bin/apm list | grep git-plus").exit_code).to be_zero
    end

  end
end
