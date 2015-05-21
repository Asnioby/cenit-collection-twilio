require "cenit/collection/twilio/version"

module Cenit
  module Collection
    require "cenit/collection/twilio/build"
    require "cenit/client"

    # bundle exec irb -I lib -r 'cenit/collection/twilio'
    # config = {:push_url => "https://www.cenithub.com/api/v1/push", :connection_token => "My Conn Token", :connection_key => "My Conn Key"}
    # config = {:push_url => "https://www.cenithub.com/api/v1/push", :user_token => "My User Token", :user_key => "My User Key"}
    # Cenit::Collection::Twilio.push_collection config
    # Cenit::Collection::Twilio.shared_collection

    @twilio = Cenit::Collection::Twilio::Build.new

    # Include Collection Gem dependency
    # require "cenit/collection/[My Dependency Collection]/build"
    # Collection dependency
    # @twilio.register_dep(Cenit::Collection::[My Dependency Collection]::Build.new)

    def self.push_collection (config)
      Cenit::Client.push(@twilio.shared_collection.to_json, config)
    end

    def self.show_collection
      @twilio.shared_collection
    end

    def self.pull_collection (parameters,config)
      @twilio.shared_collection
    end

    def self.push_sample(model, config)
      Cenit::Client.push(@twilio.sample_data(model).to_json, config)
    end
  end
end