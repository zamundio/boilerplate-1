---
title: CodeMirror
parent: Javascript plugins
permalink: /plugins/codemirror
---

# CodeMirror

CodeMirror is a versatile text editor implemented in JavaScript for the browser. It is specialized for editing code, and comes with a number of language modes and addons that implement more advanced editing functionality.

> [https://codemirror.net](https://codemirror.net)

![CodeMirror](assets/img/codemirror.png)

---

## Loading

To use CodeMirror on your page you can use the loading view [`boilerplate::load.codemirror`](https://github.com/sebastienheyd/boilerplate/blob/e1dc4b29920f011271a1a7ad682c3e82643180d9/src/resources/views/load/codemirror.blade.php)

```html
@include('boilerplate::load.codemirror')
```

## Theme

You can add a theme by putting a CSS file in the folder `/assets/vendor/boilerplate/js/codemirror/theme`

Default theme is `storm`.

## Usage

```html
@include('boilerplate::load.codemirror')
@push('js')
    <script>
        var myCode = $('#code').codemirror();
        // To get the value : myCode.getValue();
    </script>
@endpush
```