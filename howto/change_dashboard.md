---
title: Customize the dashboard
parent: How-to
permalink: /howto/change-dashboard
nav_order: 0
---

# Customize the dashboard

If you need to customize your dashboard (and you certainly have to), you can run the following artisan command :

```bash
php artisan boilerplate:dashboard
```

This will publish these two files :

* `app/Http/Controllers/Boilerplate/DashboardController.php`
* `resources/views/vendor/boilerplate/dashboard.blade.php`

It will also change the `dashboard` configuration value in `config/boilerplate/menu.php`

## Rollback

You can restore the configuration and delete the installed files by calling the command with the remove option:

```bash
php artisan boilerplate:dashboard -r
```