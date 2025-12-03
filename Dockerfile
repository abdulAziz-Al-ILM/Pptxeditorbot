# Python 3.10 versiyasidan foydalanamiz (yengil versiya)
FROM python:3.10-slim

# Ishchi papkani belgilash
WORKDIR /app

# Avval kutubxonalar ro'yxatini ko'chiramiz
COPY requirements.txt .

# Kutubxonalarni o'rnatamiz
RUN pip install --no-cache-dir -r requirements.txt

# Qolgan barcha kodlarni ko'chiramiz
COPY . .

# Botni ishga tushirish buyrug'i
CMD ["python", "main.py"]
