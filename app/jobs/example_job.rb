class ExampleJob
  include Sidekiq::Worker

  def perform
    Rails.logger.info 'OpensancaCertifier'
  end
end
