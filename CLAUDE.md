# adriano-financas — Projeto @adrianosantos_pf

## O que é este projeto
Landing page de captura de leads para o lead magnet "Planilha de Controle Financeiro Grátis" do perfil @adrianosantos_pf no Instagram.

## Stack
- HTML/CSS/JS puro (zero frameworks, carrega em <1s)
- Google Apps Script como webhook (salva leads no Google Sheets)
- Vercel para hospedagem (CDN global, deploy automático via GitHub)

## URLs importantes
- **Produção:** https://adriano-financas.vercel.app
- **GitHub:** https://github.com/adrianomkt1-cmyk/adriano-financas
- **Planilha de leads:** https://docs.google.com/spreadsheets/d/18M9fv1uTHLiGuD-TCUa0NT4NmcxqKCVs
- **Webhook Google Apps Script:** https://script.google.com/macros/s/AKfycbzF_YlMH6qFf9-sfSWuMjfnQzqj4tOGBlcUEYq0HOZIjRsSMk2LB297wt8recxGYXLbQQ/exec

## Estrutura do projeto
```
adriano-financas/
├── public/
│   └── index.html        # Landing page completa (formulário + webhook)
├── CLAUDE.md             # Este arquivo — instruções para Claude Code
├── vercel.json           # Config deploy Vercel
├── package.json          # Metadados
└── .gitignore
```

## Problemas conhecidos para corrigir
1. **Encoding de caracteres** — os emojis e acentos do index.html aparecem com encoding errado no Vercel (ex: "JoÃ£o" ao invés de "João"). Corrigir adicionando `<meta charset="UTF-8">` no topo correto e garantindo que o arquivo seja salvo em UTF-8.
2. **UX da landing page** — a versão atual é enxuta. Expandir com: seção de benefícios, depoimentos, mockup da planilha e animações de scroll.
3. **Deploy automático** — qualquer push para branch main no GitHub faz deploy automático no Vercel.

## Como rodar localmente
```bash
cd adriano-financas
npx serve public
# Abrir http://localhost:3000
```

## Como fazer deploy
```bash
# Edite os arquivos em public/
git add .
git commit -m "feat: descrição da mudança"
git push origin main
# Vercel faz o deploy automático em ~30 segundos
```

## Integrações ativas
- **Google Apps Script webhook:** recebe POST com {nome, whatsapp, email, origem, data, horario} e salva na aba "Leads Instagram" do Google Sheets
- **Download link:** aponta para export direto da planilha em .xlsx

## Próximas melhorias sugeridas
- Adicionar pixel do Meta (Facebook) para rastreamento de conversões
- Criar página de obrigado separada (thank-you.html) para melhor rastreamento
- Adicionar integração com WhatsApp Business API para envio automático da planilha
- A/B test de headlines
- Adicionar domínio personalizado (adrianosantos.com.br)
