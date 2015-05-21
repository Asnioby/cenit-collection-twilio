require 'cenit/collection/twilio/version'
require 'cenit/collection/base/build'

module Cenit
  module Collection
    module Twilio
      class Build < Cenit::Collection::Base::Build
        def initialize
          super(__dir__)
        end
      end
    end
  end
end