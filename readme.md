# SentinelStack – Structured Questionnaire Answering Tool
GTM Engineering Internship Assignment

## Industry Chosen
B2B SaaS – Enterprise Security & Compliance Automation

## Fictional Company
SentinelStack is a cloud-based SaaS company that provides compliance automation tools for mid-to-large enterprises.  
The platform helps companies manage security documentation, vendor assessments, and regulatory audits using AI-powered workflows.

---

## What I Built

I built a full-stack AI-powered questionnaire answering system that:

- Allows user authentication (signup/login with JWT)
- Stores data persistently using MongoDB Atlas (with SQLite fallback)
- Accepts structured questionnaires
- Stores reference documents as the source of truth
- Uses hybrid retrieval (vector similarity + keyword scoring)
- Generates grounded answers using LLM
- Attaches citations to each answer
- Returns "Not found in references." when unsupported
- Allows review and manual editing before export
- Exports a structured DOCX preserving question order

---

## Core Workflow

1. User signs up / logs in
2. User uploads questionnaire
3. User uploads reference documents
4. System parses questions
5. Hybrid RAG retrieval finds relevant document chunks
6. AI generates answer strictly grounded in references
7. Citations + evidence snippets attached
8. User can edit answers
9. Final document exported in original structure

---

## Reference Documents Created

I created 5 fictional internal company documents:

- Security Policy
- Data Retention Policy
- Incident Response Plan
- Compliance Certifications
- Access Control Policy

These act as the "source of truth" for answering questions.

---

## Nice-to-Have Features Implemented

✔ Confidence Score (based on retrieval strength and citation count)  
✔ Evidence Snippets (showing reference excerpts used)  
✔ Version History (multiple runs saved and comparable)  
✔ Coverage Summary (answered vs not found)

---

## Assumptions

- Questionnaire format is structured and readable as text
- Documents contain sufficient structured policy information
- Single-tenant use case per logged-in user
- Small-to-medium document sizes

---

## Trade-offs Made

- Used lightweight custom embedding instead of external vector DB to keep scope reasonable
- Used threading instead of distributed task queue
- Basic UI since assignment prioritizes workflow over design
- Limited document parsing formats (PDF, DOCX, TXT)

---

## What I Would Improve With More Time

- Replace custom embedding with OpenAI embedding API
- Add vector database (Pinecone / Weaviate)
- Improve document parser robustness
- Add role-based access control
- Add audit export and analytics dashboard
- Containerize with Docker for deployment
- Add async job queue (Celery + Redis)

---

## Tech Stack

Backend: Python (Flask)  
Database: MongoDB Atlas  
Fallback: SQLite  
AI Model: GPT-4o via OpenRouter  
Retrieval: Hybrid cosine similarity + BM25  
Export: python-docx  

---

## How to Run Locally

1. Install dependencies:
pip install -r requirements.txt

2. Set environment variables:
MONGODB_URI=your_mongo_uri
OPENROUTER_KEY=your_openrouter_key
SECRET_KEY=your_secret

3. Run:
python app.py

Open:
http://localhost:7860

---

## Demo Credentials

Email: demo@sentinelstack.com  
Password: demo123!

---

## Live Deployment

(If deployed, insert link here)