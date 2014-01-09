OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
    #provider :facebook, '546023445420293', 'f5079e7a005fa42e8626972e1e258a7d',:scope => 'offline_access,email,user_birthday', :display => 'popup'
    provider :facebook, '546023445420293', 'cb0fec94068704297983247cf2c8ad01',:scope => 'offline_access,email,user_birthday', :display => 'popup'
end
