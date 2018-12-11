require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase

test "should return contact email" do

mail = ContactMailer.contact_email("bob","info@myarticles.com", @message = "Hello" )
assert_equal ['info@myarticles.com'], mail.to
assert_equal ['info@myarticles.com'], mail.from

end
end