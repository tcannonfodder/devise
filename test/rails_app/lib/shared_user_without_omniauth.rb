# frozen_string_literal: true

module SharedUserWithoutOmniauth
  extend ActiveSupport::Concern

  included do
    devise :database_password_authenticatable, :confirmable, :lockable, :password_recoverable,
      :registerable, :rememberable, :timeoutable,
      :trackable, :password_validatable, reconfirmable: false
  end

  def raw_confirmation_token
    @raw_confirmation_token
  end
end
