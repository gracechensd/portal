require 'spec_helper'

describe Project do

  let(:user) { FactoryGirl.create(:user) }
  before { @project = user.projects.build(name: "Lorem ipsum", b_index: "1234567", ret_per: '1', status: '1') }

  subject { @project }

  it { should respond_to(:name) }
  it { should respond_to(:b_index) }
  it { should respond_to(:schedule) }
  it { should respond_to(:ret_per) }
  it { should respond_to(:status) }
  it { should respond_to(:user_id) }
  it { should respond_to(:user) }
  its(:user) { should eq user }

  it { should be_valid }

  describe "when user_id is not present" do
    before { @project.user_id = nil }
    it { should_not be_valid }
  end

  describe "with blank name" do
    before { @project.name = " " }
    it { should_not be_valid }
  end
  describe "with name that is too long" do
    before { @project.name = "a" * 65 }
    it { should_not be_valid }
  end

  describe "with blank b_index" do
    before { @project.b_index = " " }
    it { should_not be_valid }
  end

  describe "with b_index that is too long" do
    before { @project.b_index = "a" * 8 }
    it { should_not be_valid }
  end

end

