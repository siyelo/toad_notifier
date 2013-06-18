require 'toadhopper'
require 'active_support/core_ext/hash/indifferent_access'

class ToadNotifier

  def self.notify!(exception, options={})
    Toadhopper.new(@@config[:api_key]).post!(exception, options)
  end

  def self.config=(config)
    @@config = config.with_indifferent_access
  end

  def self.config
    @@config
  end

end
