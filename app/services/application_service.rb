# frozen_string_literal: true

class ApplicationService
  attr_reader :errors, :result

  def self.call(*args, &block)
    new(*args, &block).call
  end

  def initialize(_opts = {})
    @errors = []
    @result = {}
  end

  def call
    raise NotImplementedError, "#{self.class} must implement #call"
  end

  def errors?
    errors.any?
  end
end
