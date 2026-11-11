# АБК EasyMix

Сайт с интерактивной 3D-моделью АБК EasyMix (Three.js). Статический сайт: `index.html` + локальная копия Three.js r147 в `vendor/` (без зависимости от CDN). Сборка не нужна.

## Локальный запуск

```bash
python3 -m http.server 8000
```

Откройте http://localhost:8000.

## Публикация

- **GitHub Pages:** в настройках репозитория → Pages → Source выберите «GitHub Actions». Workflow `.github/workflows/pages.yml` публикует сайт при каждом пуше в `main`.
- **Vercel / Netlify:** импортируйте репозиторий как статический проект без команды сборки — корнем сайта будет `index.html`.
