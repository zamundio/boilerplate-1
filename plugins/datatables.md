---
title: DataTables
parent: Javascript plugins
permalink: /plugins/datatables
---

# DataTables

DataTables is a plugin to convert html tables into dynamic tables, allowing fast search, sorting, pagination, etc.

> [https://datatables.net/](https://datatables.net/)

## Loading

To use DataTables on your page you can use the loading view `boilerplate::load.datatables`

```blade
@include('boilerplate::load.datatables')
```

## API

Boilerplate is delivered with the excellent package [`yajra/laravel-datatables`](https://packagist.org/packages/yajra/laravel-datatables-oracle) to load data in controllers via ajax.

> [https://yajrabox.com/docs/laravel-datatables](https://yajrabox.com/docs/laravel-datatables)

## Usage

You can see an example of usage in [UsersController](https://github.com/sebastienheyd/boilerplate/blob/e1dc4b29920f011271a1a7ad682c3e82643180d9/src/Controllers/Users/UsersController.php#L59) and [list.blade.php](https://github.com/sebastienheyd/boilerplate/blob/e1dc4b29920f011271a1a7ad682c3e82643180d9/src/resources/views/users/list.blade.php#L74)

```blade
@include('boilerplate::load.datatables')
@push('js')
    <script>
        $('#dt').dataTable();
    </script>
@endpush
```