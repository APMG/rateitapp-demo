# frozen_string_literal: true
Rateitapp.plugin_manager.add(PlaylistPlugin.new('name_of_your_plugin'))
Rateitapp.provider_domain = Rails.configuration.oauth_domain