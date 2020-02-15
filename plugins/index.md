---
title: Javascript plugins
nav_order: 30
has_children: true
has_toc: true
---

# Javascript plugins

By default, only jQuery, Bootstrap, Font Awesome and AdminLTE scripts and styles are loaded.

To load and use plugins like Datatables, Date Picker, TinyMCE, ... you can use "loaders". These are blade templates
prepared to add the loading of scripts and styles for a plugin.

For example, you want to use a datepicker on a text field :

```blade
@include('boilerplate::load.datepicker')

@push('js')
    <script>
        $('.datepicker').datepicker();
    </script>
@endpush
```

Here `@include('boilerplate::load.datepicker')` will load scripts and styles to allow usage of datepicker. After that
you can push your scripts on the `js` stack (or styles on the `css` stack).

Available loaders are :

| Loader  | Documentation  |  |
|---|---|---|
| [`boilerplate::load.tinymce`](src/resources/views/load/tinymce.blade.php) | [TinyMCE](https://www.tiny.cloud)  | [Example](src/resources/views/plugins/demo/tinymce.blade.php) |
| [`boilerplate::load.codemirror`](src/resources/views/load/codemirror.blade.php) | [CodeMirror](https://codemirror.net/) | [Example](src/resources/views/plugins/demo/codemirror.blade.php) |
| [`boilerplate::load.datatables`](src/resources/views/load/datatables.blade.php) | [Datatables](https://www.datatables.net/) | [Example](src/resources/views/plugins/demo/datatables.blade.php) |
| [`boilerplate::load.datepicker`](src/resources/views/load/datepicker.blade.php) | [Tempus Dominus](https://tempusdominus.github.io/bootstrap-4/) / [Date Range Picker](https://www.daterangepicker.com) | [Example](src/resources/views/plugins/demo/datepicker.blade.php) |
| [`boilerplate::load.select2`](src/resources/views/load/select2.blade.php) | [Select2](https://select2.github.io/) | [Example](src/resources/views/plugins/demo/select2.blade.php) |
| [`boilerplate::load.moment`](src/resources/views/load/moment.blade.php) | [MomentJs](http://momentjs.com/) | |
| [`boilerplate::load.fileinput`](src/resources/views/load/fileinput.blade.php) | [Bootstrap FileInput](http://plugins.krajee.com/file-input) | |  

Some plugins are loaded by default :


* [Toastr](https://codeseven.github.io/toastr/) -
[Example](src/resources/views/plugins/demo/notify.blade.php)
* [iCheck](https://github.com/bantikyan/icheck-bootstrap) - [Example](src/resources/views/plugins/demo/icheck.blade.php)

You can see examples on the default dashboard.