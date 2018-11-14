Rails.application.config.session_store :cookie_store,
  key: '_project_management_session', domain: {
    development: '.lvh.me'
  }.fetch(Rails.env.to_sym, :all)