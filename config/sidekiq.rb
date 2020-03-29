require 'sidekiq'
require 'redis'

redis_conf = { namespace: 'myapp', size: 25, url: 'redis://:123456@127.0.0.1:6379/0' }

if Sidekiq.server?
  Sidekiq.configure_server { |config| config.redis = redis_conf } 
else
  Sidekiq.configure_client { |config| config.redis = redis_conf } 
end

root = File.dirname(__dir__)
Dir.glob("worker/*.rb").each { |file| require File.join(root, file) }
