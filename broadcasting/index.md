---
title: Broadcasting
nav_order: 65
has_children: true
has_toc: true
---

# Broadcasting

In many modern web applications, WebSockets are used to implement realtime, live-updating user interfaces. When some data is updated on the server, a message is typically sent over a WebSocket connection to be handled by the client. WebSockets provide a more efficient alternative to continually polling your application's server for data changes that should be reflected in your UI.

[Laravel broadcasting features](https://laravel.com/docs/broadcasting) makes it easy to "broadcast" your server-side events over a WebSocket connection.

This package adds some extra features to make it even easier.