require File.dirname(__FILE__) + '/../spec_helper'

describe Templater::Generator, '.template_list' do
  
  it "should add a series of templates given a list as heredoc" do
    @generator_class = Class.new(Templater::Generator)
    
    @generator_class.should_receive(:template).with(:app_model_rb, 'app/model.rb')
    @generator_class.should_receive(:template).with(:spec_model_rb, 'spec/model.rb')
    @generator_class.should_receive(:template).with(:donkey_poo_css, 'donkey/poo.css')
    @generator_class.should_receive(:template).with(:john_smith_file_rb, 'john/smith/file.rb')
    
    @generator_class.template_list <<-LIST
      app/model.rb
      spec/model.rb
      donkey/poo.css
      john/smith/file.rb
    LIST
  end
  
  it "should add a series of templates given a list as array" do
    @generator_class = Class.new(Templater::Generator)
    
    @generator_class.should_receive(:template).with(:app_model_rb, 'app/model.rb')
    @generator_class.should_receive(:template).with(:spec_model_rb, 'spec/model.rb')
    @generator_class.should_receive(:template).with(:donkey_poo_css, 'donkey/poo.css')
    @generator_class.should_receive(:template).with(:john_smith_file_rb, 'john/smith/file.rb')
    
    @generator_class.template_list(%w(app/model.rb spec/model.rb donkey/poo.css john/smith/file.rb))
  end
  
end
