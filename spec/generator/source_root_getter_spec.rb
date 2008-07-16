require File.dirname(__FILE__) + '/../spec_helper'

describe Templater::Generator, '#source_root' do
  it "try to retrieve the source root from the class" do
    @generator_class = Class.new(Templater::Generator)
    @generator_class.should_receive(:source_root).and_return('/tmp/source')

    instance = @generator_class.new('/tmp')
    instance.source_root.should == '/tmp/source'
  end
end
