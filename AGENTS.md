# AGENTS.md — Anna (Rails 8.1)

## Build / Lint / Test Commands

```bash
# Run all tests
bin/rails test

# Run a single test file
bin/rails test test/controllers/issue1_controller_test.rb

# Run a single test by line number
bin/rails test test/controllers/issue1_controller_test.rb:15

# Run all system tests
bin/rails test:system

# Run full CI pipeline locally
bin/ci

# Lint with RuboCop
bin/rubocop

# Auto-fix RuboCop offences
bin/rubocop -a

# Security audits
bin/brakeman --no-pager
bin/bundler-audit
bin/importmap audit

# Database setup for test
bin/rails db:test:prepare

# Run seeds in test env
RAILS_ENV=test bin/rails db:seed:replant

# Dev server
bin/dev
```

## Code Style & Conventions

### General
- Follow Rails conventions and **RuboCop Omakase** style (`inherit_gem: { rubocop-rails-omakase: rubocop.yml }`).
- Code should be **minimal** — controllers under 30 lines, models under 20 lines, no unnecessary abstraction.
- Prefer Rails built-in / convention-over-configuration over custom solutions.

### Imports & Requires
- Use `require "test_helper"` (not `require_relative`) in test files.
- Use `require_relative` in config/boot files.
- Define shared behaviour via `ActiveSupport::Concern` modules (see `Authentication` concern).
- Mix in concerns with `include` in controllers/models.

### Naming
- **Snake case** for all Ruby identifiers: `email_address`, `check_issue1`.
- **CamelCase** for classes/modules: `ApplicationController`, `Issue1Controller`.
- Controller names are **plural** by convention; singular OK for single-resource (`UserController`, `BoardController`).
- File names match class names in snake_case: `issue1_controller.rb` → `Issue1Controller`.
- Test files mirror source: `test/controllers/issue1_controller_test.rb`.
- I18n keys use dot-prefix in views: `t('.title')` resolves to `view.board.show.title`.

### Types & Migrations
- Ruby is dynamically typed — no type annotations.
- Use Rails migration types explicitly: `t.string`, `t.boolean`, `t.datetime`, `t.references`.
- Add DB constraints (`null: false`, `default:`, `unique: true`) at the database level.
- Use `normalizes` for attribute normalization: `normalizes :email_address, with: ->(e) { e.strip.downcase }`.

### Views & I18n
- All text in **Portuguese (pt-BR)**.
- Use lazy I18n lookups in views: `t('.key')` → `view.controller_name.action_name.key`.
- Use `link_to`, `button_to`, `redirect_to` with named routes (`board_path`, `issue1_new_path`).
- Flash messages: `notice` for success, `alert` for errors.

### Error Handling
- Use Rails flash: `redirect_to ..., notice:` / `flash.now[:alert]`.
- Guard authentication with `before_action :require_authentication` from the `Authentication` concern.
- Opt out with `allow_unauthenticated_access only: [:new, :create]`.
- Use `rate_limit to: 10, within: 3.minutes` for form endpoints.
- Rescue strategically: `rescue ActiveSupport::MessageVerifier::InvalidSignature` — avoid blanket rescues.

### Testing
- Use **Minitest** with `ActionDispatch::IntegrationTest` for controller/integration tests.
- Use `fixtures :all` — load fixtures from `test/fixtures/*.yml`.
- Use `setup do ... end` for test setup.
- Assertions: `assert_response :success`, `assert_redirected_to`, `assert_select ".notice"`, `assert_equal`.
- Sign in helper: `sign_in_as(user)` (defined in `test/test_helper.rb`).
- Tests run in parallel via `parallelize(workers: :number_of_processors)`.

### Authentication Pattern
- Cookie-based sessions via `cookies.signed.permanent[:session_id]`.
- `Current` model (`ActiveSupport::CurrentAttributes`) for thread-safe current user/session access.
- `has_secure_password` with BCrypt for passwords.
- Session creation in `Authentication#start_new_session_for` — includes `user_agent`, `ip_address`.

### Routes
- Use named routes: `resource :session`, `resources :passwords, param: :token`.
- Use `get/post` with explicit `as:` for non-RESTful routes: `get "jogo" => "board#show", as: :board`.
- Root route: `root "user#show"`.

### Git
- Commits are in English, imperative mood, capitalized: `Setting up issue 2`, `Create board controller`.
- Branches: `main`, `development`, feature branches off `development`.

### File Organisation
```
app/controllers/concerns/  → shared controller logic (Authentication)
app/models/                → thin models with business logic
test/controllers/          → integration tests per controller
test/models/               → model unit tests
test/test_helpers/         → shared test helpers
config/locales/            → pt-BR YAML translations
```
