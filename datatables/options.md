---
title: Options
parent: Datatables
permalink: /datatables/options
nav_order: 20
---

# Options

Options are defined by using the `setUp` method, E.g.:

```php
use Sebastienheyd\Boilerplate\Datatables\Datatable;

class ExampleDatatable extends Datatable
{
    public function setUp()
    {
        $this->order('created_at', 'desc')
            ->pageLength(50)
            ->stateSave();
    }

    //...
}
```

| option | default | description |
| --- | --- | --- |
| [order()](#order) | [] | Using this parameter you can define which column(s) the order is performed upon, and the ordering direction |
| [stateSave](#statesave) | false | Restore table state on page reload |
| [showCheckboxes](#showcheckboxes) | false | Show checkbox on each row |
| [lengthMenu()](#lengthmenu) | [10, 25, 50, 100] | Specify the entries in the length drop down |
| [pageLength()](#pagelength) | 10 | Number of rows to display on a single page when using pagination |
| [pagingType()](#pagingtype) | simple_numbers | Type of buttons shown in the pagination control |
| [setRowId()](#setrowid) | null | Setting id to rows |
| [setRowClass()](#setrowclass) | null | Setting class to rows |
| [setRowAttr()](#setrowattr) | null | Setting attribute(s) to rows |
| [noFilters()](#nofilters) | visible | Disable filters |
| [noPaging()](#nopaging) | visible | Disable paging |
| [noLengthChange()](#nolengthchange) | visible | Disable length change |
| [noSorting()](#nosorting) | visible | Disable sorting |
| [noOrdering()](#noordering) | visible | Disable sorting (alias) |
| [noSearching()](#nosearching) | visible | Disable searching |
| [noInfo()](#noinfo) | visible | Disable table informations |

---

## order

Single-column ordering as the initial state:

```php
$this->order('id', 'desc')
```

Multi-column ordering as the initial state:

```php
$this->order(['name' => 'desc', 'created_at' => 'desc'])
```

## stateSave

Enable state saving:

```php
$this->stateSave()
```

## showCheckboxes

Show checkbox on every row:

```php
$this->showCheckboxes()
```

## lengthMenu

Show options 10, 50 and 100 records:

```php
$this->lengthMenu([10,50,100])
```

Show options 10, 50, 100 and all records:

```php
$this->lengthMenu([[10, 50, 100, -1] , [10, 50, 100, 'All']])
```

## pageLength

Show 50 records per page:

```php
$this->pageLength(50])
```

## pagingType

Setting `numbers` as paging Type

```php
->setPagingType('numbers')
```

Allowed types are 

* `numbers` - Page number buttons only
* `simple` - 'Previous' and 'Next' buttons only
* `simple_numbers` - 'Previous' and 'Next' buttons, plus page numbers
* `full` - 'First', 'Previous', 'Next' and 'Last' buttons
* `full_numbers` - 'First', 'Previous', 'Next' and 'Last' buttons, plus page numbers 
* `first_last_numbers` - 'First' and 'Last' buttons, plus page numbers

## setRowId

Setting row id via `column` name.

```php
->setRowId('id')
```

Setting row id via `closure`.

```php
->setRowId(function ($user) {
    return $user->id;
})
```

Setting row id via `blade` string.

```php
->setRowId('{{$id}}')
```

## setRowClass

Setting row class via `closure`.

```php
->setRowClass(function ($user) {
return $user->id % 2 == 0 ? 'alert-success' : 'alert-warning';
})
```

## setRowAttr

Setting row attribute(s) via `closure`.

```php
->setRowAttr([
    'data-id' => function($user) {
        return 'row-' . $user->id;
    },
    'data-name' => function($user) {
        return 'row-' . $user->name;
    },
])
```

Setting row attribute(s) via `blade` string.

```php
->setRowAttr([
    'data-id' => 'row-{{$id}}',
    'data-name' => 'row-{{$name}}',
])
```

## noFilters

Disable filters:

```php
$this->noFilters() 
```

## noPaging

Disable paging:

```php
$this->noPaging() 
```

## noLengthChange

Disable length change:

```php
$this->noLengthChange() 
```

## noSorting

Disable sorting:

```php
$this->noSorting() 
```

## noOrdering

Disable sorting (alias):

```php
$this->noOrdering() 
```

## noSearching

Disable searching:

```php
$this->noSearching() 
```

## noInfo

Disable table informations:

```php
$this->noInfo() 
```

## Next step

> [See columns definition](column)