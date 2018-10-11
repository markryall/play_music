class Notifier
  attr_reader :installed

  def initialize
    @installed = !`which terminal-notifier`.chomp.empty?
  end

  def say message
    `terminal-notifier "Listening to #{message}"` if installed
  end
end
