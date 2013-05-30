OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, '546023445420293', 'f5079e7a005fa42e8626972e1e258a7d',:scope => 'offline_access,email,user_birthday', :display => 'popup'
end
