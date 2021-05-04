---
title: Form
parent: Components
permalink: /components/form
---

# Form

```html
<x-boilerplate::form> </x-boilerplate::form>
```

Or for Laravel < 7

```html
@component('boilerplate::form') @endcomponent
```

Will render

```html
<form method="POST" action="" accept-charset="UTF-8"><input name="_token" type="hidden" value="....">

</form>
```

## Attributes

Attributes that can be used with this component :

| Option | Type | Default | Description |
| --- | --- | --- | --- |
| url | string | null | Input name (required) |
| route | mixed | null | Route to use for action, can be a string or an array containing route and values |
| method | string | post | Form method to use |
| files | boolean | false | Set to true if you have files to upload in your form |

All of the attributes that are not in the list above will be added as attributes to the form tag.

**NB** : for non primitive values that not using a simple string you have to use the `:` character as a prefix :

```html
<x-boilerplate::form :route="['boilerplate.users.edit', 1]" method="put" files> </x-boilerplate::form>
```

Or for Laravel < 7 :

```html
@component('boilerplate::form', ['route' => ['boilerplate.users.edit', 1], 'method' => 'put', 'files' => true]) @endcomponent
```