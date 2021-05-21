---
title: app.php
nav_order: 10
parent: Configuration
permalink: /configuration/app
---

# config/boilerplate/app.php
{: .no_toc }

The `config/boilerplate/app.php` file allows to define the general parameters of the application.

---

```php
<?php
return [
    // Backend routes prefix. Ex: "admin" => "http://..../admin"
    'prefix'     => 'admin',

    // Backend domain if different as current domain. Ex: "admin.mydomain.tld"
    'domain'     => '',

    // Redirect to this route after login
    'redirectTo' => 'boilerplate.dashboard',

    // Backend locale
    'locale'     => config('app.locale'),
    
    // Activating daily logs and showing log viewer
    'logs'       => true,
];
```
---

## prefix

The `prefix` parameter will define the prefix of the application urls. This allows you to have no conflict if you need 
to have frontend urls separated.

The default value is `"admin"` &rarr; http://mywebsite.tld/**admin**

> If your application does not have a front-end, you can define an empty string as `prefix`, this will then display the 
login form at the root of your website.

See [Laravel documentation](https://laravel.com/docs/master/routing#route-group-prefixes) for route prefixes.

---

## domain

The `domain` parameter makes it possible to define a different and exclusive domain for the application.

The default value is `""`

> If the parameter is empty, all domains will allow access to the backend, otherwise only the specified domain will allow 
  access.

See [Laravel documentation](https://laravel.com/docs/master/routing#route-group-sub-domain-routing) for sub-domain 
routing.

---

## redirectTo

The `redirectTo` parameter allows you to define the route to which you will be redirected after connecting.

The default value is `"boilerplate.dashboard"`

---

## locale

The `locale` parameter allows you to define the language used in the application. 

This makes possible to use a different language from the general language of the application, to work with your 
developments it will then be necessary to define the `boilerplatelocale` middleware on your routes.

<blockquote>
<p>
The <code>boilerplatelocale</code> middleware will replace default application locale by the locale setted in the boilerplate's 
configuration file.
</p>
<p>
See <a href="https://laravel.com/docs/master/middleware#assigning-middleware-to-routes">Laravel documentation</a> on assigning 
middleware to routes.
</p>
</blockquote>
The default value is `config('app.locale')`

Supported language are English (en), French (fr), Spanish (es) and Turkish (tr).

> You can translate into a language not yet supported by copying the `src/resources/lang/boilerplate` folder content into 
`resources/lang/vendor/boilerplate` folder. After that, copy or rename one of the language folders in the new language 
folder to create. All you have to do is translate. If you want to share the language you have added, don’t hesitate to 
make a pull request.

## logs

The `logs` parameter allows you to define if you want to add `daily` to the logging stack and enable the log viewer.

<blockquote>
Log viewer is only visible by administrators by default.
</blockquote>
