# Przykładowy Projekt z Docker Compose

Ten projekt zawiera przykładową stronę webową uruchamianą za pomocą Docker Compose z serwerem Nginx.

## Struktura Projektu

```
testtty/
├── docker-compose.yml    # Konfiguracja Docker Compose
├── index.html           # Przykładowa strona HTML
└── README.md           # Ten plik
```

## Funkcje

- 🐳 **Docker Compose** - Konteneryzacja aplikacji
- ⚡ **Nginx** - Szybki serwer webowy
- 🎨 **Nowoczesny Design** - Responsywny interfejs z gradientami
- 📱 **Responsywność** - Działa na wszystkich urządzeniach

## Uruchomienie

1. Upewnij się, że masz zainstalowany Docker i Docker Compose
2. W katalogu projektu uruchom:
   ```bash
   docker-compose up -d
   ```
3. Otwórz przeglądarkę i przejdź do: `http://localhost:56632`

## Zatrzymanie

Aby zatrzymać aplikację:
```bash
docker-compose down
```

## Technologie

- **Docker Compose** - Orchestracja kontenerów
- **Nginx** - Serwer webowy
- **HTML5** - Struktura strony
- **CSS3** - Stylowanie z gradientami i animacjami
- **Responsive Design** - Dostosowanie do różnych urządzeń

## Rozwój

Aby dodać nowe pliki statyczne:
1. Umieść je w katalogu projektu
2. Dodaj volume w `docker-compose.yml`
3. Uruchom ponownie: `docker-compose up -d` 