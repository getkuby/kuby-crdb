# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `multi_json` gem.
# Please instead update this file by running `bin/tapioca gem multi_json`.

module MultiJson
  include ::MultiJson::Options
  extend ::MultiJson::Options
  extend ::MultiJson

  def adapter; end
  def adapter=(new_adapter); end
  def cached_options(*_arg0); end
  def current_adapter(options = T.unsafe(nil)); end
  def decode(string, options = T.unsafe(nil)); end
  def default_adapter; end
  def default_engine; end
  def default_options; end
  def default_options=(value); end
  def dump(object, options = T.unsafe(nil)); end
  def encode(object, options = T.unsafe(nil)); end
  def engine; end
  def engine=(new_adapter); end
  def load(string, options = T.unsafe(nil)); end
  def load_adapter(new_adapter); end
  def reset_cached_options!(*_arg0); end
  def use(new_adapter); end
  def with_adapter(new_adapter); end
  def with_engine(new_adapter); end

  private

  def load_adapter_from_string_name(name); end
end

MultiJson::ALIASES = T.let(T.unsafe(nil), Hash)

class MultiJson::AdapterError < ::ArgumentError
  def cause; end

  class << self
    def build(original_exception); end
  end
end

MultiJson::DecodeError = MultiJson::ParseError
MultiJson::LoadError = MultiJson::ParseError

module MultiJson::Options
  def default_dump_options; end
  def default_load_options; end
  def dump_options(*args); end
  def dump_options=(options); end
  def load_options(*args); end
  def load_options=(options); end

  private

  def get_options(options, *args); end
end

module MultiJson::OptionsCache
  extend ::MultiJson::OptionsCache

  def fetch(type, key, &block); end
  def reset; end

  private

  def write(cache, key); end
end

MultiJson::OptionsCache::MAX_CACHE_SIZE = T.let(T.unsafe(nil), Integer)

class MultiJson::ParseError < ::StandardError
  def cause; end
  def data; end

  class << self
    def build(original_exception, data); end
  end
end

MultiJson::REQUIREMENT_MAP = T.let(T.unsafe(nil), Array)
MultiJson::VERSION = T.let(T.unsafe(nil), String)

class MultiJson::Version
  class << self
    def to_s; end
  end
end

MultiJson::Version::MAJOR = T.let(T.unsafe(nil), Integer)
MultiJson::Version::MINOR = T.let(T.unsafe(nil), Integer)
MultiJson::Version::PATCH = T.let(T.unsafe(nil), Integer)
