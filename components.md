---
title: Components
nav_order: 70
permalink: /components
---

# Components

## Card

To easily integrate a card, a component is available

```blade
@component('boilerplate::card')
    A card component
@endcomponent

{{-- Laravel >= 7 --}}
<x-card>
    A card component
</x-card>
```

Will render

![Card](assets/img/card.png)