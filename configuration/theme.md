---
title: theme.php
nav_order: 50
parent: Configuration
permalink: /configuration/theme
---

# config/boilerplate/theme.php
{: .no_toc }

The `config/boilerplate/theme.php` file allows to define the backend theme parameters.

---

```php
<?php
$theme = include __DIR__.'/themes/default.php';

// Additionnal views to append items to the navbar
$theme['navbar'] += [
    'left'  => [],
    'right' => [],
];

// Url to favicon
$theme['favicon'] = null;

return $theme;
```
---

## theme

Theme to use.

See [How to change theme](/howto/change-theme)

---

## navbar

Allows you to define additionnal views that will be displayed to the top bar.

See [How-to add items to the top bar](/howto/add-navbar-items)

---

## favicon

Allows you to define an url to the favicon.

If null, a default favicon will be shown.