# 🚀 Task Orbit

## Overview
Task Orbit is a comprehensive task management application that seamlessly integrates modern technologies to provide a powerful, cross-platform productivity solution.

![Project Banner](https://pic.surf/fhd)

## 🛠 Tech Stack

### Backend
![Python](https://img.shields.io/badge/Python-3.10+-3776AB?style=for-the-badge&logo=python&logoColor=white)
![FastAPI](https://img.shields.io/badge/FastAPI-009688?style=for-the-badge&logo=fastapi&logoColor=white)
![Supabase](https://img.shields.io/badge/Supabase-3ECF8E?style=for-the-badge&logo=supabase&logoColor=white)

### Frontend
![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)

### Integration
![Notion](https://img.shields.io/badge/Notion-000000?style=for-the-badge&logo=notion&logoColor=white)

## 🌟 Key Features

- 🔄 RESTful API endpoints using FastAPI
- 💾 Real-time database operations with Supabase
- 📱 Cross-platform mobile application using Flutter
- 🔗 Notion workspace integration for task management

## 🗺️ Project Architecture

```mermaid
graph TD
    A[Flutter App] -->|HTTP Requests| B[FastAPI Backend]
    B -->|Database Queries| C[Supabase PostgreSQL]
    B -->|Sync Tasks| D[Notion API]
    A -->|Real-time Updates| C
```

## 🚀 Getting Started

### Prerequisites

- [x] Python 3.10+
- [x] Flutter SDK
- [x] Supabase Account
- [x] Notion API Key

### Installation

1. Clone the repository
```bash
git clone https://github.com/yourusername/task-orbit.git
cd task-orbit
```

2. Set up backend
```bash
cd backend
python -m venv venv
source venv/bin/activate  # On Windows use `venv\Scripts\activate`
pip install -r requirements.txt
```

3. Set up frontend
```bash
cd ../frontend
flutter pub get
```

## 📦 Development Setup

### Environment Variables

Create a `.env` file with the following:
```
SUPABASE_URL=your_supabase_project_url
SUPABASE_KEY=your_supabase_anon_key
NOTION_API_KEY=your_notion_api_key
```

## 🤝 Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct and the process for submitting pull requests.

### Contributors

| Avatar | Name | Role | Contributions |
|--------|------|------|--------------|
| <img src="https://github.com/saravanap-plabs.png" width="50" height="50" style="border-radius: 50%;"/> | Saravana Prabhu | Developer | Database Management / API Development |
| <img src="https://github.com/rohanmurali007.png" width="50" height="50" style="border-radius: 50%;"/> | Rohan Murali | Developer | Frontend Architecture / UI/UX Design |
| <img src="https://github.com/sidh4rth7-potdar.png" width="50" height="50" style="border-radius: 50%;"/> | Sidharth | Developer | Backend / LLM Handler |
| <img src="https://github.com/arunprakash-plabs.png" width="50" height="50" style="border-radius: 50%;"/> | Arun Prakash | Developer | Backend Architecture |
| <img src="https://github.com/sreekanth-plabs.png" width="50" height="50" style="border-radius: 50%;"/> | Sreekanth | Developer | API Development |
| <img src="https://github.com/kishore-kumar-plabs.png" width="50" height="50" style="border-radius: 50%;"/> | Kishore Kumar | Developer | Backend Development |
| <img src="https://github.com/kalanithi-plabs.png" width="50" height="50" style="border-radius: 50%;"/> | Kalanithi | Developer | Backend / Machine Learning |

### Contribution Graph

We appreciate the hard work of our amazing contributors!

![Contribution Grid](https://contrib.rocks/image?repo=yourusername/task-orbit)

### Contribution Statistics

| Contributor | Total Contributions | Pull Requests | Issues |
|------------|---------------------|--------------|--------|
| Saravana Prabhu | ![](https://img.shields.io/badge/Contributions-120-blue) | ![](https://img.shields.io/badge/PRs-45-green) | ![](https://img.shields.io/badge/Issues-15-red) |
| Rohan Murali | ![](https://img.shields.io/badge/Contributions-95-blue) | ![](https://img.shields.io/badge/PRs-30-green) | ![](https://img.shields.io/badge/Issues-10-red) |
| Sidharth | ![](https://img.shields.io/badge/Contributions-85-blue) | ![](https://img.shields.io/badge/PRs-25-green) | ![](https://img.shields.io/badge/Issues-8-red) |
| Arun Prakash | ![](https://img.shields.io/badge/Contributions-75-blue) | ![](https://img.shields.io/badge/PRs-20-green) | ![](https://img.shields.io/badge/Issues-6-red) |
| Sreekanth | ![](https://img.shields.io/badge/Contributions-60-blue) | ![](https://img.shields.io/badge/PRs-18-green) | ![](https://img.shields.io/badge/Issues-5-red) |
| Kishore Kumar | ![](https://img.shields.io/badge/Contributions-50-blue) | ![](https://img.shields.io/badge/PRs-15-green) | ![](https://img.shields.io/badge/Issues-4-red) |
| Kalanithi | ![](https://img.shields.io/badge/Contributions-40-blue) | ![](https://img.shields.io/badge/PRs-12-green) | ![](https://img.shields.io/badge/Issues-3-red) |

**Note:** Contribution statistics are hypothetical and for demonstration purposes.

## 📊 Project Status

![Build Status](https://img.shields.io/github/actions/workflow/status/yourusername/task-orbit/main.yml)
![Issues](https://img.shields.io/github/issues/yourusername/task-orbit)
![Pull Requests](https://img.shields.io/github/issues-pr/yourusername/task-orbit)

## 📜 License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

## 📞 Contact

- Project Link: [https://github.com/yourusername/task-orbit](https://github.com/yourusername/task-orbit)
- Join our [Discord Community](https://discord.gg/your-discord-link)

---

**Made with ❤️ by the Task Orbit Team**
