#!/bin/bash
# Deploy rápido para produção
echo "🚀 Fazendo deploy para produção..."
git add .
git commit -m "feat: ${1:-update landing page}"
git push origin main
echo "✅ Push feito! Vercel está fazendo o deploy automaticamente."
echo "🌐 Acesse: https://adriano-financas.vercel.app"
