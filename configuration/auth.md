---
title: auth.php
nav_order: 20
parent: Configuration
permalink: /configuration/auth
---

# config/boilerplate/auth.php
{: .no_toc }

The `config/boilerplate/auth.php` file allows to define the authentication and registration parameters of the application.


---

```php
<?php
return [
    'register'      => false,           // Allow to register new users on backend login page
    'register_role' => 'backend_user',  // Given role to new users (except the first one who is admin)
    'providers'     => [
        'users' => [
            'driver' => 'eloquent',
            'model'  => Sebastienheyd\Boilerplate\Models\User::class,
            'table'  => 'users',
        ],
    ],
];
```

---

## register

If `register` is set to `true` then it is possible for new users to register themselves to access the application.

A link "Register a new user" appears on the login page.

The default value is `false`.

---

## register_role

The `register_role` parameter allows to set the default role when a new user registers (if the "register" parameter 
above is set to "true").

The default value is `backend_user`

> The first user created will always have the role admin 

---

## providers

The `providers` parameter overwrites `config/auth.php` to use boilerplate's user model 
(`Sebastienheyd\Boilerplate\Models\User::class`) instead of the default Laravel one (`App\User::class`).

This setting allows you to define your own user class or your own provider if you want to add features.
