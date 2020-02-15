---
title: Add items to the main menu
parent: How-to
permalink: /howto/add-menu-items
---

# Add items to the main menu
{: .no_toc }

Menu items are supported by the [lavary/laravel-menu](https://github.com/lavary/laravel-menu) and [hieu-le/active](https://github.com/letrunghieu/active) packages.

To add items to the main menu, boilerplate will use providers.

--- 

{: .no_toc .text-delta }

1. TOC
{:toc}

---

## Generating a new menu items provider

This package provides an artisan command to quickly generate a menu items provider.

This command will generate the provider file in the `app/Menu` folder, if the folder does not exists, it will be created.

```bash
php artisan boilerplate:menuitem {name} {-s} {-o=100}
```

| option / argument | description |
|---|---|
| name | Class name to generate |
| -s --submenu | Menu item must have sub item(s) |
| -o --order | Menu item order in the backend menu |

Once generated, the class file can be edited to customize the items.

You can also add your own providers by adding their classnames to the array of providers in the configuration file
`config/boilerplate/menu.php`. This can be useful if you don't want to use the default directory `app/Menu` in your 
application.

---

## For package developpers

Menu items providers can be added by using the `boilerplate.menu.items` singleton in your 
package service provider. Example : 

```php
public function register()
{
    app('boilerplate.menu.items')->registerMenuItem([
        Users::class,
        Logs::class,
    ]);
}
```