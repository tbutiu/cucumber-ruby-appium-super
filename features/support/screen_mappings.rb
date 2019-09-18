# frozen_string_literal: true

def get_screen_mappings(screen)
  $plataform = ENV['PLATFORM_NAME'].downcase
  dir = "#{Dir.pwd}/features/elements/#{screen}_elements.yaml"
  screen_mappings = YAML.load_file(dir)
  @mappings = screen_mappings[$plataform]
end

def get_locales_by_screen(screen)
  dir = "#{Dir.pwd}/config/locales/pt/#{screen}.yaml"
  YAML.load_file(dir)
end