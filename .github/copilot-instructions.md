# Anna repository instructions

## Project overview

Anna is a Rails 8.1 educational web app in Portuguese (Brazilian Portuguese) about skin-cancer prevention. It uses SQLite for all environments, Propshaft for assets, import maps with Hotwire (Turbo and Stimulus), and Rails' Solid adapters for cache, jobs, and cable.

The main user flow is:

1. `QuestionsController` lists the seeded quiz questions.
2. A signed-in user opens a nested answer form under a question.
3. `Answer` belongs to both the current `User` and the `Question`; it persists only when the submitted value matches `Question#correct_value`.
4. A user cannot answer the same question twice; `User#points` is the answer count.

The domain hierarchy is `Stage has_many :questions`, `Question has_many :options and answers`, and `User has_many :answers and sessions`. Quiz content is maintained in [`db/seeds.rb`](../db/seeds.rb), while schema changes belong in migrations and [`db/schema.rb`](../db/schema.rb) is generated.

Authentication is shared through [`app/controllers/concerns/authentication.rb`](../app/controllers/concerns/authentication.rb). It requires authentication by default, stores the session id in a signed permanent `session_id` cookie, exposes `Current.session`/`Current.user`, and supports unauthenticated controller actions via `allow_unauthenticated_access`. Preserve this pattern rather than adding controller-specific authentication.

Routes are conventional resource routes in [`config/routes.rb`](../config/routes.rb). Answers are nested under questions, sessions are a singular resource, passwords use a token parameter, and the root route is `questions#index`.

## Commands

Run commands from the repository root:

```bash
# Start the development server and asset processes
bin/dev

# Run the full Minitest suite
bin/rails test

# Run one test file
bin/rails test test/controllers/answers_controller_test.rb

# Run one test at a specific line
bin/rails test test/controllers/answers_controller_test.rb:15

# Prepare the test database
bin/rails db:test:prepare

# Run system tests
bin/rails test:system

# Run the same CI entrypoint locally
bin/ci

# Lint Ruby
bin/rubocop

# Automatically apply RuboCop corrections when appropriate
bin/rubocop -a

# Run security and dependency audits
bin/brakeman --no-pager
bin/bundler-audit
bin/importmap audit
```

CI runs the Ruby and JavaScript audits, RuboCop, the test suite after `db:test:prepare`, and system tests. The test jobs set `RAILS_ENV=test`; use the same environment when running database or seed operations explicitly, for example `RAILS_ENV=test bin/rails db:seed:replant`.

## Conventions

- Follow Rails conventions and the repository's RuboCop Omakase configuration. Prefer Rails built-ins and small controllers/models over new abstraction layers.
- Test files use `require "test_helper"`, `ActionDispatch::IntegrationTest` for controller flows, all fixtures via `fixtures :all`, and the shared `sign_in_as(user)` helper from [`test/test_helper.rb`](../test/test_helper.rb).
- Authentication and answer flows should be tested through HTTP/integration behavior, including redirects, flash messages, duplicate-answer prevention, and incorrect-answer validation.
- Use strong parameters with `params.expect(...)`, matching the existing controllers.
- Use named routes and the existing REST/nested-resource structure instead of constructing URLs manually.
- Keep user-facing copy in Portuguese (pt-BR). Views should use lazy I18n lookups such as `t('.title')` when translations exist; use `notice` for success and `alert` for errors.
- Keep shared controller behavior in concerns under `app/controllers/concerns/`. Keep models focused on associations, validations, normalization, and domain queries.
- Preserve database-level foreign keys, non-null constraints, and unique indexes when changing the schema. Add schema changes through migrations; do not hand-edit `db/schema.rb`.
- User emails are normalized by the `User` model, passwords use `has_secure_password`, and password reset/session invalidation follows the existing Rails authentication flow.
- Follow the existing naming convention: snake_case Ruby identifiers and matching file names, CamelCase classes, and tests mirroring the source area.
- Commit messages are English, imperative, and capitalized (for example, `Create board controller`).
