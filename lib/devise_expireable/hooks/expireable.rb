Warden::Manager.after_set_user do |record, warden, options|
  scope = options[:scope]

  remember_expired = record && record.respond_to?(:remember_expired?) && record.remember_expired?
  if remember_expired && warden.authenticated?(scope) && options[:store] != false
    warden.logout(scope)
    throw :warden, :scope => scope, :message => :session_expired
  end
end