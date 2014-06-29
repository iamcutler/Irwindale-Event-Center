require 'rails_helper'

RSpec.describe MailingList, :type => :model do
  before { @MailingList = MailingList.new }

  subject { @MailingList }

  it 'has a valid factory' do
    expect(FactoryGirl.build(:MailingList)).to be_valid
  end

  context 'with an invalid email address' do
    it { should_not be_valid }
  end
end
