---
title: Configuration
parent: Broadcasting
permalink: /broadcasting/configuration
nav_order: 10
---

# Configuration

This package will only support the "pusher" driver.

> You can create a [Pusher account](https://dashboard.pusher.com/accounts/sign_up) or use [Soketi](https://docs.soketi.app/) if you don't want to be limited.

Once your application has been created, transfer its parameters to your `.env` file :

```
PUSHER_APP_ID=your-pusher-app-id
PUSHER_APP_KEY=your-pusher-key
PUSHER_APP_SECRET=your-pusher-secret
PUSHER_APP_CLUSTER=mt1
```

Also in you `.env` file, set the broadcast driver to pusher :

```
BROADCAST_DRIVER=pusher
```


**NB**: The broadcast service provider will be loaded automatically when the broadcast driver is set to `pusher`.

## Next step

> [See how to use broadcasting features](usage)