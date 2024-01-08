Rails.application.config.i18n.default_locale = :es
locales = %i[en es]
languages = { en: %i[es],
              es: %i[en],
}
Rails.application.config.i18n.available_locales = locales
Rails.application.config.i18n.fallbacks = languages
Rails.application.config.i18n.fallbacks = false