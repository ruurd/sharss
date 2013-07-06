# Be sure to restart your server when you modify this file.

Sharss::Application.config.session_store :cookie_store,
                                         key: '_sharss_session',
                                         secure: Rails.env == 'production',
                                         httponly: true,
                                         expire_after: 60.minutes
