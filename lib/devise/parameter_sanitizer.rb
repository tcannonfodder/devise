# frozen_string_literal: true

require 'devise/password_parameter_sanitizer'

module Devise
  class ParameterSanitizer < PasswordParameterSanitizer
    ActiveSupport::Deprecation.warn <<-DEPRECATION.strip_heredoc
      [Devise] `Devise::ParameterSanitizer` is deprecated and will be
      removed in the next major version.
      Use `Devise::PasswordParameterSanitizer` instead.
      DEPRECATION
  end
end