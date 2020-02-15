---
title: Change theme
parent: How-to
permalink: /howto/change-theme
---

# Change theme

To change the theme, you must define it in the [`config/theme.php`](/configuration/theme) file.

All you have to do is to include the theme file you want to use :

```php
$theme = include __DIR__.'/themes/default.php';
```

Available themes with this package are `default`, `black`, `red`.

---

## Create a new theme

You don't have to create a new theme, you can also edit the `default` theme. But it is recommanded to create a new theme, so you can add modifications without touching the default themes.

To create a new theme, just copy the `default.php` file in the `config` folder to a new theme file. 

After that, just modify the theme included in `config/theme.php` by calling your new theme file.

---

## Application icon (logo) and display name

To change the application icon and the display name, just change the `sidebar/brand/logo/icon` and `sidebar/brand/logo/text` in the current theme file.

```php
'sidebar' => [
        'brand'   => [
            'logo' => [
                'bg'     => 'blue',
                'icon'   => '<i class="fa fa-cubes"></i>',
                'text'   => '<strong>BO</strong>ilerplate',
                'shadow' => 2,
            ],
        ]
]
```

You can use [Font Awesome](https://fontawesome.com/icons?d=gallery&m=free) icons for you logo.
