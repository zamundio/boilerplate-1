---
title: Customize the dashboard
parent: How-to
permalink: /howto/change-dashboard
nav_order: 0
---

# Customize the dashboard

You can override the dashboard view by publishing it :

```bash
php artisan vendor:publish --tag=boilerplate-dashboard
```

After that, you will find the view `dashboard.blade.php` in `resources/views/vendor/boilerplate`

If you need to have a controller for more flexibility, you can run the following artisan command :

```bash
php artisan boilerplate:dashboard
```

This will publish for you the view, the `DashboardController.php` file in the `app/Http/Controllers/Boilerplate` folder and
modify the configuration file `config/boilerplate/menu.php`.

You can also use your own dashboard controller by changing the `dashboard` value in `config/boilerplate/menu.php`.