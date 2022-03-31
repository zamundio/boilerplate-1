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

## API

When using an API as data source, you can use `setOffset` and `setTotalRecords` to set the Datatable informations.

```php
use Sebastienheyd\Boilerplate\Datatables\Datatable;

class ExampleDatatable extends Datatable
{
    public function datasource()
    {
        $data = MyExampleApi::get('https://myapiurl.example', [
            'limit' => request()->input('length'),
            'offset' => request()->input('start'),
            'query' => request()->input('search')['value']
        ]);
                
        $this->setOffset(request()->input('start'))
             ->setTotalRecords($data->total);
    
        return collect($data->array);
    }
}
```

## Passing parameters

Sometimes you need to pass some parameters to the ajax call that retrieves the data. To do that, you can pass the parameters 
with the `ajax` argument :

```html
<x-boilerplate::datatable name="example" :ajax="['role' => 'admin']"/>
```

Then you can retrieve the value by getting the posted argument :

```php
use Sebastienheyd\Boilerplate\Datatables\Datatable;
use DB;

class ExampleDatatable extends Datatable
{
    public function datasource()
    {
        return DB::table('users')->whereRoleIs(request()->post('role'));
    }

    //...
}
```

## Next step

> [See datatable options](options)