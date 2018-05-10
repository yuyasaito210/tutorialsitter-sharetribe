Given(/^there is paid transaction with testimonials for a listing with title "(.*?)" starter "(.*?)"$/) do |listing_title, starter_username|
  community = @current_community
  starter = Person.find_by(username: starter_username)
  listing = Listing.where(community_id: community.id, title: listing_title).first
  transaction = FactoryGirl.create(:transaction, community: community,
                                                 listing: listing,
                                                 starter: starter,
                                                 current_state: 'confirmed')
  FactoryGirl.create(:testimonial, tx: transaction,
                                   author: listing.author,
                                   receiver: starter,
                                   text: 'Hi from author')
  FactoryGirl.create(:testimonial, tx: transaction,
                                   author: starter,
                                   receiver: listing.author,
                                   text: 'Hi from starter')
end


