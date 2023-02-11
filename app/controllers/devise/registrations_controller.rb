# frozen_string_literal: true

class Devise::RegistrationsController < Devise::PasswordRegistrationsController
  prepend_view_path("password_registrations")

  ActiveSupport::Deprecation.warn <<-DEPRECATION.strip_heredoc
  [Devise] `Devise::RegistrationsController` is deprecated and will be
  removed in the next major version.
  Use `Devise::PasswordRegistrationsController` instead.
  DEPRECATION
end