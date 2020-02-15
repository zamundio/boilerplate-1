---
title: Package update
nav_order: 80
permalink: /update
---

# Package update

Boilerplate comes with assets such as Javascript, CSS, and images. Since you typically will need to overwrite the assets
every time the package is updated, you may use the ```--force``` flag :

```
php artisan vendor:publish --provider="Sebastienheyd\Boilerplate\BoilerplateServiceProvider" --tag=public --force
```

To auto update assets each time package is updated, you can add this command to `post-autoload-dump` into the
file `composer.json` at the root of your project.


```json
{
    "scripts": {
        "post-autoload-dump": [
            "@php artisan vendor:publish --provider=\"Sebastienheyd\\Boilerplate\\BoilerplateServiceProvider\" --tag=public --force -q",
        ]
    }
}
```

If needed, you can force update for these tags : ```config```, ```lang```, ```public```

| tag | description | destination path |
|---|---|---|
| config | Configuration files | app/config/boilerplate |
| lang | Laravel default lang files for form validation | ressources/lang |
| public | Public assets, you must update it after each package update | public/assets/vendor/boilerplate |