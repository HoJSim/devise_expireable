require 'devise_expireable/version'
require 'devise'

Devise.add_module :expireable, model: 'devise_expireable/models/expireable'

module DeviseExpireable
end