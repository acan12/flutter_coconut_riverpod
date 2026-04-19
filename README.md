# flutter_coconut_riverpod

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## API DEMO ##
### Personal: ###
- GET https://private-f66ab-myportfolio6.apiary-mock.com/personal
- Example Response:
```json
{
    "id": 123,
    "full_name": "James Brown",
    "email": "james@mail.com",
    "first_name": "James",
    "last_name": "Brown",
    "avatar": "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
}
```

### Articles: ###

- GET https://newsapi.org/v2/everything?q=Apple&from=2026-04-12&sortBy=popularity&apiKey=API_KEY
- Example Response:
```json
{
  "status": "ok",
  "totalResults": 178,
  "articles": [
    {
      "source": {
        "id": "business-insider",
        "name": "Business Insider"
      },
      "author": "Ben Shimkus",
      "title": "Ex-Tesla president says he mimicked Domino's online pizza ordering to boost sales",
      "description": "A former Tesla boss said he and Elon Musk spotted a problem with the carmaker's website. They turned to Domino's for inspiration.",
      "url": "https://www.businessinsider.com/ex-tesla-president-dominos-pizza-car-sales-2026-4",
      "urlToImage": "https://i.insider.com/69d917f705c9b303c4e76f82?width=1200&format=jpeg",
      "publishedAt": "2026-04-12T08:17:01Z",
      "content": "Jon McNeill, a former president for Tesla, said Tesla's website required too many clicks and taps before a user purchased a car.IEFA\r\n<ul><li>A former Tesla president said he used Domino's ordering a… [+3121 chars]"
    },
    {
      "source": {
      "id": null,
      "name": "Hipertextual"
    },
      "author": "José María López",
      "title": "Los tonos de llamada que han marcado la historia de la telefonía móvil",
      "description": "Hoy en día es probable que apenas oigas el tono de llamada de tu teléfono móvil. Incluso puede que no sepas cómo suena. Nos hemos acostumbrado a tenerlo en silencio. Y a recibir mensajes de voz y de texto en lugar de recibir llamadas al uso. Pero la historia …",
      "url": "https://hipertextual.com/guias/tonos-de-llamada-ringtones-populares-telefonos-moviles/",
      "urlToImage": "https://i0.wp.com/imgs.hipertextual.com/wp-content/uploads/2026/04/Motorola-Nokia-Apple-Telefonos-Moviles-Tonos.jpg?fit=1920%2C1280&quality=70&strip=all&ssl=1",
      "publishedAt": "2026-04-12T07:00:00Z",
      "content": "Hoy en día es probable que apenas oigas el tono de llamada de tu teléfono móvil. Incluso puede que no sepas cómo suena. Nos hemos acostumbrado a tenerlo en silencio. Y a recibir mensajes de voz y de … [+8817 chars]"
    }
  ]
}

```