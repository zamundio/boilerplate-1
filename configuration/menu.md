---
title: menu.php
nav_order: 40
parent: Configuration
permalink: /configuration/menu
---

# config/menu.php
{: .no_toc }

The `config/menu.php` file allows to add menu items and set the dashboard controller to use.


---

{: .no_toc .text-delta }

1. TOC
{:toc}

---

## dashboard

Controller to call to show the dashboard. This is the controller which is called after log in.

If you define your own controller, you must have an `index()` method in it to work (see the route `boilerplate.dashboard`).

Default value is `\Sebastienheyd\Boilerplate\Controllers\DashboardController::class`

---

## providers

An array of menu items providers. This will be useful only if you don't use the artisan command  `boilerplate:menuitem` or if you don't want to use the default providers folder (`App/Menu`)

Default value is an empty array.
