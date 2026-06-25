#!/bin/bash
# Testa o webhook do Google Apps Script
echo "🧪 Testando webhook..."
curl -X POST \
  "https://script.google.com/macros/s/AKfycbzF_YlMH6qFf9-sfSWuMjfnQzqj4tOGBlcUEYq0HOZIjRsSMk2LB297wt8recxGYXLbQQ/exec" \
  -H "Content-Type: application/json" \
  -d '{"nome":"Teste Claude Code","whatsapp":"(11) 99999-9999","email":"teste@adrianosantos.com","origem":"Claude Code Test"}' \
  && echo "✅ Lead de teste enviado! Verifique a planilha Google Sheets."
