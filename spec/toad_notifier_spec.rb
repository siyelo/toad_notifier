require_relative 'spec_helper.rb'

describe ToadNotifier do

  let(:exception) { double 'SomeException', :message => 'blah' }
  let(:hopper) { double Toadhopper }

  before :all do
    ToadNotifier.config = {'api_key' => 'test key'}
  end

  it "#config" do
    ToadNotifier.config.should ==  {'api_key' => 'test key'}
  end

  describe "#notify!" do
    it "passes supplied data on to Toadhopper" do
      options = {:some => "important_stuff"}
      Toadhopper.should_receive(:new).with('test key').and_return hopper
      hopper.should_receive(:post!).with(exception, options)
      ToadNotifier.notify!(exception, options)
    end

    it "defaults options if none are provided" do
      Toadhopper.should_receive(:new).with('test key').and_return hopper
      hopper.should_receive(:post!).with(exception, {})
      ToadNotifier.notify!(exception)
    end
  end
end
