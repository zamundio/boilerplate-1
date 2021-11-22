---
title: Datasource
parent: Datatables
permalink: /datatables/datasource
nav_order: 10
---

# Datasource

You may use Laravel's Eloquent Model, Query Builder or Collection as data source for your dataTables.

## Eloquent

```php
use Sebastienheyd\Boilerplate\Datatables\Datatable;
use Sebastienheyd\Boilerplate\Models\User;

class ExampleDatatable extends Datatable
{
    public function datasource()
    {
        return User::query();
    }

    //...
}
```

## Query Builder

```php
use Sebastienheyd\Boilerplate\Datatables\Datatable;
use DB;

class ExampleDatatable extends Datatable
{
    public function datasource()
    {
        return DB::table('users');
    }

    //...
}
```

## Collection

```php
use Sebastienheyd\Boilerplate\Datatables\Datatable;

class ExampleDatatable extends Datatable
{
    public function datasource()
    {
        return collect([
            ['id' => 1, 'name' => 'John'],
            ['id' => 2, 'name' => 'Jane'],
            ['id' => 3, 'name' => 'James'],
        ]);
    }

    //...
}
```

## Next step

> [See datatable options](options)