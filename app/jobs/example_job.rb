class ExampleJob < ActiveJob::Base
  queue_as :default

  def perform(*args)
    Rails.logger.info 'OpensancaCertifier'
  end
end
