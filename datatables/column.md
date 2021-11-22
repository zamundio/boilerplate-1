---
title: Column
parent: Datatables
permalink: /datatables/column
nav_order: 30
---

# Column

To display a column to your table, include a new `Column::add()` in the `columns()` method.

Place your code inside the method's `return []` statement.

Example:

```php
public function columns(): array
{
  return [
    Column::add('Id')
        ->data('id'),

    Column::add('Last Name')
        ->data('last_name'),

    Column::add('Created At')
        ->data('created_at')
        ->dateFormat(),
  ];
} 
```

| method | description |
| --- | --- |
| [add](#add) | Adds a new column |
| [data](#data) | Links the column to an existing Datasource field |
| [name](#name) | Relation name to use for eager loading relationships |
| [filter](#filter) | Implements a custom search for a specific column |
| [filterOptions](#filteroptions) | Select options for the column filter |
| [fromNow](#fromnow) | For dates, replace the date by a “from now” text |
| [dateFormat](#dateformat) | For dates, will replace the date by the localized date |
| [notSearchable](#notsearchable) | Disables search (and filter) of the column |
| [notSortable](#notsortable) | Disables the sorting of the column |
| [notOrderable](#notorderable) | Alias of [notSortable](#notsortable) |
| [actions](#actions) | Specific method to add actions buttons as a string |
| [class](#class) | Sets the column class |
| [width](#width) | Sets the column width |
| [hidden](#hidden) | Hide the column |

---

## add

Adds a new column to your DataTable. The method take one argument as column title, default is an empty string.

```php
Column::add('My column title') 
```

## data

Links the column to an existing Datasource field.

```php
->data('last_name')
```

You can use a Closure to edit the column content.

```php
->data('last_name', function(User $user) {
    return Str::title($user->last_name);
})
```

Or to create a custom column

```php
->data('custom_name', function(User $user) {
    return $user->first_name.' '.$user->last_name;
})
```

In this case, you have to define a filter or disable the column filtering.

## name

When using Eloquent and eager loading relationships you have to specify the `relation.column_name`.

You also have to specify fields to get to avoid integrity constraints.

Example:

```php
public function datasource()
{
    return User::with('roles')->select('users.*');
} 
```

Then to filter roles by name:

```php
->name('roles.name')
```

## filter

In some cases, we need to implement a custom search for a specific column. To achieve this, you can use `filter` method.

```php
->filter(function ($query, $q) {
    return $query->where(DB::raw('CONCAT_WS(first_name, " ", last_name)'), 'LIKE', "%$q%");
})
```

Specific case to filter on eager loaded model:

```php
use Illuminate\Database\Eloquent\Builder;

->filter(function($query, $q) {
    $query->whereHas('roles', function(Builder $query) use ($q) {
        $query->where('name', '=', $q);
    });
}) 
```

## filterOptions

Replaces the input text field by a select containing the options returned by this method.

```php
->filterOptions(function () {
    return Role::all()->pluck('display_name', 'name')->toArray();
})
```

## fromNow

For dates, replace the date by a "from now" text.

```php
->fromNow()
```

## dateFormat

For dates, will replace the date by the localized date. By default, it will use the locale `boilerplate::date.YmdHis` defined in the file `date.php`

```php
->dateFormat()
```

You can also specify the format to use, this will use the [momentjs displaying format](https://momentjs.com/docs/#/displaying/)

```php
->dateFormat('dddd D MMMM YYYY')
```

## notSearchable

Disables search (and filter) of the column.

```php
->notSearchable()
```

## notSortable

Disables the sorting of the column.

```php
->notSortable()
```

## notOrderable

Alias of [notSortable](#notsortable)

```php
->notOrderable()
```

## actions

Specific method to add actions buttons as a string

```php
->actions(function (User $user) {
    return '<button type="button" data-id="'.$user->id.'">Edit</button>';
})
```

Or use the [`Button` class](button)

```php
->actions(function (User $user) {
    return Button::add()
        ->route('boilerplate.users.edit', $user->id)
        ->icon('pencil-alt')
        ->color('primary')
        ->make();
})
```

## class

Sets the column class.

```php
->class('text-primary text-nowrap')
```

## width

Sets the column width.

```php
->width('40px')
```

## hidden

Hide the column.

```php
->hidden()
```

## Next step

> [See button class](button)