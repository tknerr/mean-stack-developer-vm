require 'spec_helper'

describe 'mean-dev-vm::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html

  it "installs git" do
    expect(command('git --version').exit_status).to eq 0
  end

  it "installs node" do
    expect(command('node -v').exit_status).to eq 0
  end

  it "installs npm" do
    expect(command('npm -v').exit_status).to eq 0
  end

  it "installs vim" do
    expect(command('vim --version').exit_status).to eq 0
  end
end
