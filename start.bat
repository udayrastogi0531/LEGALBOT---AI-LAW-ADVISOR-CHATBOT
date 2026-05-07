@echo off
REM Quick start script for the Legal Adviser Chatbot

echo Starting Legal Adviser Chatbot...
echo.

REM Activate virtual environment
call .venv\Scripts\activate.bat

REM Check if .env exists
if not exist .env (
    echo ERROR: .env file not found!
    echo Please create a .env file with your GROQ_API_KEY
    echo See SETUP.md for instructions
    pause
    exit /b 1
)

REM Start Streamlit
echo Starting Streamlit server...
python -m streamlit run main.py --server.port 8501

pause
