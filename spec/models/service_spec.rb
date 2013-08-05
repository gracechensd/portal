require 'spec_helper'

describe Service do
  let(:user) { FactoryGirl.create(:user) }
  before do
    @service = Service.new(name: "Lorem ipsum", description: "foobar")
  end

  subject { @service }

  it { should respond_to(:name) }
  it { should respond_to(:description) }
end
