# Activeadmin JQuery Minicolors

<a href="https://codeclimate.com/github/kholdrex/activeadmin-minicolors"><img src="https://codeclimate.com/github/kholdrex/activeadmin-minicolors/badges/gpa.svg" /></a>

Incorporate JQuery Minicolors into your ActiveAdmin apps.

![Screenshot](https://raw.github.com/kholdrex/activeadmin-minicolors/master/screenshot.png)

See http://labs.abeautifulsite.net/jquery-minicolors/

## Installation

Add `activeadmin`, `jquery-rails` and `jquery-minicolors-rails` to your Gemfile:

```ruby
   gem 'activeadmin'
   gem 'jquery-rails'
   gem 'jquery-minicolors-rails'
```

And add `activeadmin-minicolors` to your Gemfile:

```ruby
   gem 'activeadmin-minicolors', github: 'kholdrex/activeadmin-minicolors'
```

Add the activeadmin-minicolors calls to the active_admin stylesheets and javascripts with:

```active_admin.css.scss
   @import "active_admin/minicolors/base";
```

```active_admin.js.coffee
   #= require active_admin/minicolors
```

## Usage

### Minicolors

To use a Minicolors style input simply change from :string to :minicolors_picker

```ruby
   ActiveAdmin.register Labels do

     form do |f|
       f.input :color, as: :minicolors_picker, input_html: { data: { minicolors: { position: :right } }
     end

     form do |f|
       f.inputs "Task" do
         f.has_many :labels, allow_destroy: true, new_record: "Add Label" do |e|
           e.input :color, as: :minicolors_picker
         end
       end
     end

   end
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/activeadmin-minicolors/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
