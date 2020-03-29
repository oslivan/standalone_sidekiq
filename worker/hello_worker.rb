class HelloWorker
  include Sidekiq::Worker

  sidekiq_options queue: :default

  def perform(*args)
    puts args.join(',')
  end
end
