OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '683066385912-i279sdnha8n28r0j6gudqsoi8eu73qgt.apps.googleusercontent.com', 'JfWkfMgrrKa7Gi5gGfj54aN4', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
  provider :google_oauth2, '683066385912-rqj1llcvi0ijic1c7q9dv2qg34u91m4h.apps.googleusercontent.com', 'v8G_m4aegBcQhepucMMkqVb9', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end