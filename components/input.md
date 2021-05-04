---
title: Input
parent: Components
permalink: /components/input
---

# Input

```html
<x-boilerplate::input name="example" />
```

Or for Laravel < 7

```html
@component('boilerplate::input', ['name' => 'example']) @endcomponent
```

Will render

![Input](../assets/img/components/input.png)

## Attributes

Attributes that can be used with this component :

| Option | Type | Default | Description |
| --- | --- | --- | --- |
| name | string | null | Input name (required) |
| type | string | text | Type of input, can be text, email, password, file, number, date and select |
| label | string | name | Input label, can be a translation string. Will use the input name if empty |
| help | string | null | Help message that will be displayed under the input field |
| value | mixed | null | Value of input |
| options | array | [] | For select, array of options |

All of the attributes that are not in the list above will be added as attributes to the input field :

```html
<x-boilerplate::input name="example" data-toggle="tooltip" data-title="Tooltip content" />
```

**NB** : for non primitive values that not using a simple string you have to use the `:` character as a prefix :

```html
<x-boilerplate::input type="date" name="date" :value="\Carbon\Carbon::now()" :placeholder="__('stringToTranslate')"/>
<x-boilerplate::input type="select" name="select" :options="[1 => 'Option 1', 2 => 'Option 2']" />
```