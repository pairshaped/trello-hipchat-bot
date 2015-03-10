# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

job_type :runner, "cd :path && bundle exec ruby -Ilib ':task' :output"

# Example:
#
set :output, "/var/www/trello-hipchat-bot/current/log/cron_log.log"

every 1.minute do
  runner "bot.rb"
end
