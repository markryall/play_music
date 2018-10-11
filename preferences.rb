require 'yaml'
require 'fileutils'

class Preferences
  attr_reader :path, :preferences

  def initialize path
    path.gsub!('~', File.expand_path('~')) if path.start_with?('~')
    FileUtils.mkdir_p File.dirname(path)
    if File.exists? path
      @preferences = YAML.load_file path
    else
      @preferences = {}
    end
    @path = path
  end

  def [] key
    preferences[key]
  end

  def []= key, value
    preferences[key] = value
    persist
  end

  def persist
    File.open(path, 'w') {|f| f.puts preferences.to_yaml}
  end
end
