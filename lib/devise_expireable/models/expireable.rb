require_relative '../hooks/expireable'

module Devise
  module Models
    module Expireable
      extend ActiveSupport::Concern
    end
  end
end