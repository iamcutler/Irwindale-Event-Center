class MailingList < ActiveRecord::Base
  validates :email_address, presence: true,
                            uniqueness: { case_sensitive: false },
                            format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }

  private
    # Rails strong parameters
    def mailing_list_params
      params.require(:MailingList).permit(:email_address)
    end
end
