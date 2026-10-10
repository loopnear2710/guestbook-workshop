FROM python:3.12-alpine
WORKDIR /app

# Ставим зависимости через обычный pip, так как pyproject.toml им поддерживается
COPY pyproject.toml .
RUN pip install .

COPY . .

EXPOSE 8000
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
