RSpec.configure do |config|
  config.filter_run :focus
  config.run_all_when_everything_filtered = true
  config.disable_monkey_patching!
  config.profile_examples = 0
  config.order = :random

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  if config.files_to_run.one?
    config.default_formatter = 'doc'
  end

  Kernel.srand config.seed
end
