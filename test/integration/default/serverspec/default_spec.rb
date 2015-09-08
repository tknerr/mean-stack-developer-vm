require 'spec_helper'

describe 'mean-dev-vm::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html

  describe command('git --version') do
    its(:stdout) { should match /git version/ }
    its(:exit_status) { should eq 0 }
  end

  describe command('node -v') do
    its(:exit_status) { should eq 0 }
  end

  describe command('npm -v') do
    its(:exit_status) { should eq 0 }
  end

  describe command('vim --version') do
    its(:exit_status) { should eq 0 }
  end

end
