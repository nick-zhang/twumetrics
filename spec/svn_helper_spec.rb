require "rspec"
require "svn_helper"

describe 'svn revert' do

  it "should build command for reverting to a certain date" do
    SvnHelper.revertTo("/some/path", "2013-06-20").should eq("svn update /some/path -r {2013-06-20}")
  end

end