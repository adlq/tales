require 'spec_helper'

describe "Tales" do

  subject { page }

  describe "show tale page" do
    visit '/tales/'

    it { should have_selector('title', text: "Tales") }
  end
end
