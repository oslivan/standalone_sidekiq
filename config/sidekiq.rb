require 'sidekiq'
require 'redis'

redis_conf = { namespace: 'app', size: 25, url: 'redis://localhost:6379/0' }

if Sidekiq.server?
  Sidekiq.configure_server { |config| config.redis = redis_conf } 
else
  Sidekiq.configure_client { |config| config.redis = redis_conf } 
end

root = File.dirname(__dir__)
Dir.glob("worker/*.rb").each { |file| require File.join(root, file) }
