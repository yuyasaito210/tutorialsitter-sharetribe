every 3.hours do
  command "/home/valeriia/tutorialsitter/tutorialsitter_autorun_search_deamon.sh"
end

every :wednesday, at: '3pm' do
  runner "CommunityMailer.deliver_community_updates"
end

every :sunday, at: '3pm' do
  runner "CommunityMailer.deliver_community_updates"
end
