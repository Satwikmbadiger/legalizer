# Legalizer - LLM Based Legal Document Summarizer and Doubt Solver

Legalizer is a web application that helps users summarize legal documents and get answers to legal queries using advanced language models. Users can upload PDF or image files, and interact with an AI assistant through a user-friendly chat interface. The backend is built with Flask and leverages the Groq LLM model for summarization and question answering.

## Features

- **Document Summarization**: Upload PDF or image files to extract and summarize legal content using the Groq LLM model.
- **Legal Query Assistance**: Chat with the AI to receive answers to legal questions.
- **User-Friendly Interface**: Clean, modern UI for easy interaction.

## Project Structure

```
legalizer
├── src
│   ├── app.py                # Main application file
│   ├── static
│   │   ├── css
│   │   │   └── styles.css    # CSS styles for the application
│   ├── templates
│   │   ├── index.html        # Landing page template
│   │   └── chat.html         # Chat interface template
├── requirements.txt          # Python dependencies
├── Dockerfile                # Docker build instructions
├── docker-compose.yml        # Docker Compose configuration
└── README.md                 # Project documentation
```

## Installation

1. **Clone the repository:**
   ```
   git clone <repository-url>
   cd legalizer
   ```

2. **Install dependencies:**
   ```
   pip install -r requirements.txt
   ```

3. **Set up environment variables:**
   - Create a `.env` file and add your `GROQ_API_KEY`.

4. **(Optional) Run with Docker:**
   ```
   docker-compose up --build
   ```

## Usage

- **Start the Flask application:**
  ```
  python src/app.py
  ```
  Or use Docker as above.

- **Access the app:**
  Open your browser and go to [http://127.0.0.1:5000](http://127.0.0.1:5000).

- **Interact:**
  - Use the landing page to navigate to the chat interface.
  - Upload documents or type legal questions to get AI-powered responses.

## Contributors

- [Satwik M badiger](https://github.com/Satwikmbadiger)
- [Mohit R](https://github.com/moh-maverick)
- [M Rahul Sagayaraj](https://github.com/rahulsags)
- [Mahesh Sharma](https://github.com/mahesh2095)

## License

This project is licensed under the Apache License 2.0 - see the [LICENSE](LICENSE) file for details.
