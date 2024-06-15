Rails.application.configure do
  # Other configurations...

  # Enable caching
  config.action_controller.perform_caching = true
  config.cache_store = :memory_store
  config.public_file_server.headers = {
    'Cache-Control' => "public, max-age=#{2.days.to_i}"
  }

  # Asset compression
  config.assets.js_compressor = :uglifier
  config.assets.css_compressor = :sass
end
