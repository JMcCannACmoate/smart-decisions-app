# Smart Decisions App

A comprehensive CI/CD pipeline for a Flutter mobile app and Next.js web application with automated testing and deployment.

## Tech Stack

### Frontend
- Mobile App: Flutter (Dart)
- Web App: Next.js (React & TypeScript)
- UI Frameworks: 
  - Flutter: Material UI
  - Web: Tailwind CSS + Shadcn UI

### Backend
- Database: PostgreSQL
- API: Express.js
- Authentication: Built-in auth system

### DevOps
- CI/CD: GitHub Actions
- Database Migrations: Drizzle
- Hosting: Vercel (Web)

## Development Setup

1. Clone the repository:
```bash
git clone YOUR_REPOSITORY_URL
cd smart-decisions-app
```

2. Install dependencies:
```bash
npm install
```

3. Start the development server:
```bash
npm run dev
```

4. Open your browser to `http://localhost:5000`

## VS Code Setup

Recommended extensions:
- ESLint
- Prettier
- GitLens
- TypeScript and JavaScript Language Features

## Project Structure

```
├── client/            # Web frontend (Next.js)
│   ├── src/
│   │   ├── components/
│   │   ├── pages/
│   │   └── lib/
├── server/            # Backend API
│   ├── routes.ts
│   └── storage.ts
├── shared/            # Shared types and schemas
└── mobile/           # Flutter mobile app (coming soon)
```

## Contributing

1. Create a new branch for your feature
2. Make your changes
3. Create a pull request
4. Wait for CI checks to pass
5. Request review

## License

MIT
