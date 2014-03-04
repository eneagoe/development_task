# HACK: not really recommended in a production system
require 'active_record/fixtures'

ActiveRecord::FixtureSet.create_fixtures(Rails.root.join('spec', 'fixtures'), 'customers')
ActiveRecord::FixtureSet.create_fixtures(Rails.root.join('spec', 'fixtures'), 'charges')
