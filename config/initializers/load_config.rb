# Load the configuration file 
CONFIG = YAML.load_file("#{Rails.root}/config/config.yml")[Rails.env]
