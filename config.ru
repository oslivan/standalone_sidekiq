require 'sidekiq'
require 'sidekiq/web'

require_relative 'config/sidekiq.rb'

run Sidekiq::Web

# 参考：https://github.com/mperham/sidekiq/wiki/Monitoring
