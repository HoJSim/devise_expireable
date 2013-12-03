# DeviseExpireable

Модуль для devise, ограничивающий время сессии пользователя. Используется вместе с модулем `rememberable`.
Если время сессии пользователя, задаваемое в `rememberable`, истекло, то срабатывает hook и происходит `logout`.

## Installation

Add this line to your application's Gemfile:

    gem 'devise_expireable'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install devise_expireable

## Usage

Для использования, достаточно добавить этот модуль к devise:

    devise :rememberable, :expireable

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
