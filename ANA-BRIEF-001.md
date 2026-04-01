# ANA-BRIEF-001 — CogniPay Marketing Website Content Brief

**Prepared by:** Ana (Analyst Agent)
**Date:** 2026-04-01
**Project:** CogniPay Public Marketing Website
**Output repo:** `elicona1/cognipay-website`
**Local folder:** `project/cognipay-website/`

---

## 1. Project Overview

### What We're Building
A single-page marketing website (landing page) for **CogniPay**, a Mexican fintech company that provides standardized payment and transaction solutions to financial institutions (cajas, sofomes, sofipos, etc.).

### Target Audience
- CTOs and CIOs of small/medium Mexican financial institutions
- Financial operations directors
- Decision-makers in cooperativas, cajas de ahorro, sofomes, sofipos

### Tone & Voice
- **Professional** — this is B2B fintech, not consumer
- **Confident** — 20+ years banking experience, clear value proposition
- **Clear & concise** — financial professionals are busy, no fluff
- **In Spanish** — 100% Spanish, Mexican market

### Tech Stack for Implementation
- Static HTML5 + Tailwind CSS (via CDN) + vanilla JS
- No build step — pure files deployable via Nginx
- Responsive (mobile-first)
- Single HTML file (`index.html`) + assets folder

---

## 2. Color Palette

| Token | Hex | Usage |
|---|---|---|
| `primary` | `#1E40AF` | Main blue — CTAs, headlines, icons |
| `primary-dark` | `#1E3A8A` | Hover states, hero gradient end |
| `primary-light` | `#3B82F6` | Accents, borders, highlights |
| `sky` | `#BAE6FD` | Light blue tints, card borders |
| `gray-900` | `#111827` | Body text |
| `gray-700` | `#374151` | Secondary text |
| `gray-400` | `#9CA3AF` | Muted text, dividers |
| `gray-100` | `#F3F4F6` | Section backgrounds |
| `white` | `#FFFFFF` | Cards, hero text on dark |
| `accent` | `#0EA5E9` | Sky blue — subtle highlights |

**Hero gradient:** `from-[#1E3A8A] to-[#1E40AF]` (dark navy to royal blue)
**Alternating sections:** White ↔ `gray-100`

---

## 3. Navigation

### Nav Bar
- Sticky top, white background, subtle shadow
- Logo: "CogniPay" wordmark (blue, bold)
- Links (anchor scroll):
  - Nosotros → `#nosotros`
  - Propuesta de Valor → `#valor`
  - Plataforma → `#plataforma`
  - Servicios → `#servicios`
  - Tecnología → `#tecnologia`
  - Contacto → `#contacto`
- CTA button (top right): **"Solicitar Demo"** (blue, rounded)

---

## 4. Section-by-Section Content

---

### SECTION 1 — Hero
**Anchor:** `#hero`
**Layout:** Full-width, dark blue gradient background, centered text, white copy. Subtle geometric/grid pattern overlay (CSS). Height: 100vh or min 600px.

**Eyebrow text:** `Solución de Pagos`

**Main Headline:**
> Infraestructura de pagos para instituciones financieras mexicanas

**Subheadline:**
> CogniPay conecta, ejecuta y concilia las transacciones de tu institución con los principales canales y procesadores del mercado — de forma segura, escalable y certificada PCI-DSS.

**CTA Buttons (two side by side):**
- Primary: `Solicitar Demo` (white bg, blue text)
- Secondary: `Conocer más` (blue border, white text, outline style) → scrolls to `#nosotros`

**Stats strip below CTAs (3 items in a row):**
- `+20 años` / de experiencia en banca mexicana
- `1,000 TPS` / capacidad de procesamiento concurrente
- `PCI-DSS` / infraestructura certificable nivel 1

---

### SECTION 2 — Nosotros
**Anchor:** `#nosotros`
**Layout:** White background, two columns: left = text block, right = decorative card with founding year badge.

**Section Label:** `Quiénes Somos`
**Headline:**
> Fundada por expertos en banca para el mercado financiero mexicano

**Body copy:**
> CogniPay nació en 2025 de la mano de un equipo con más de 20 años promedio de experiencia en el sector bancario de México y Latinoamérica. Nuestra razón de ser es simple: las instituciones financieras medianas y pequeñas merecen la misma infraestructura de pagos que los grandes bancos.

**Misión (card or callout box):**
> **Misión:** "Brindar al sector de instituciones financieras mexicanas como cajas, sofomes, sofipos y similares, soluciones estandarizadas en cuanto a pagos y transacciones bancarias que les permitan crecer de manera sana y controlada."

**Visión (card or callout box):**
> **Visión:** "Convertirnos en el proveedor estándar de soluciones de pago del mercado mexicano."

---

### SECTION 3 — Propuesta de Valor
**Anchor:** `#valor`
**Layout:** Light gray background (`gray-100`). Section title centered at top. 4-column card grid (2×2 on mobile). Each card: icon + title + bullet list.

**Section Label:** `Nuestra Oferta de Valor`
**Headline:**
> Todo lo que tu institución necesita para operar pagos

**Cards (4):**

#### Card 1 — Conecta 🔗
> Conectamos tu institución con todos los canales y procesadores del ecosistema de pagos mexicano.
- Corresponsales (OXXO, Paynet, Yastás)
- Cajeros automáticos y cajas en sucursal
- Aplicaciones móviles y portales web
- Procesadores de tarjetas y SPEI

#### Card 2 — Ejecuta ⚙️
> Procesamos cada transacción con robustez, control y trazabilidad total.
- Configuración de red y cifrados
- Control de mensajería, reintentos y recuperación de errores
- Armado de procesos de ejecución
- Monitoreo y alertas en tiempo real

#### Card 3 — Registra 🗄️
> Integramos y sincronizamos todos los registros con tus sistemas internos.
- Conexión a Core Bancario y CRM
- Bases de datos y sistemas de registro
- Conciliaciones y compensaciones
- Liquidaciones automáticas

#### Card 4 — Administra 📊
> Reportes, auditoría y control total de tu operación de pagos.
- Reportes estadísticos y de auditoría
- Seguridad y control de accesos
- Reportes de conciliación
- Compensaciones y liquidaciones

---

### SECTION 4 — Plataforma
**Anchor:** `#plataforma`
**Layout:** White background. Section label + headline centered. Below: architecture diagram built in HTML/CSS (layered boxes — no images needed). 3 horizontal layers as visual blocks.

**Section Label:** `Nuestra Plataforma`
**Headline:**
> Una arquitectura diseñada para la operación financiera de alto volumen

**Subheadline:**
> CogniPay se posiciona como la capa de ejecución entre tus canales de servicio, tus sistemas de registro y los procesadores del mercado.

**Architecture Layers (HTML/CSS diagram — 3 rows):**

**Row 1 — Canales & Portales** (top, light blue bg):
`Conexiones a Canales` ← TLS / VPN / Cifrado → `Portales de Administración`

**Row 2 — Ejecución** (center, blue bg, white text — emphasis row):
`Procesos · Lógica de Negocio · Microservicios · Agentes · Logs de Auditoría`
`Procesos Batch · Conciliaciones · Compensaciones · Liquidaciones`

**Row 3 — Sistemas de Registro** (bottom, gray bg):
`Core Bancario` | `CRM` | `Bases de Datos` | `Reportes` | `Integraciones`

---

### SECTION 5 — Servicios
**Anchor:** `#servicios`
**Layout:** Gray-100 background. Section label + headline. Then a tabbed or accordion interface (JS tabs on desktop, accordion on mobile) for each service area. Or a 3-column grid of service cards with expand.

**Section Label:** `Servicios`
**Headline:**
> Soluciones especializadas para cada necesidad de pago

**Service Blocks (7):**

#### 💳 Tarjetas
> Gestión completa del ciclo de vida de tarjetas con soporte ISO8583 y API, compatible con infraestructura PCI-DSS.
- Asignación y activación con OTP
- Cambio de NIP (ISO8583 y API)
- Bloqueo temporal o definitivo bajo demanda
- CVV Dinámico y Tarjeta Virtual
- Tokenización para wallets
- Autorización de cargos con reglas de validación
- Conexión a sistema de antifraude
- Conciliación y estados de cuenta

#### 🏦 SPEI y Pagos
> Procesamiento completo de transferencias SPEI con múltiples canales de inicio y conciliación automática.
- Integración con aplicativos SPEI (Karpay, STP, etc.)
- Canales: App, Portales, Corresponsales
- Proceso de remesas
- Reportes y conciliaciones automáticas
- Administración y monitoreo

#### 🏪 Corresponsales
> Integración nativa con las principales redes de corresponsalía en México.
- OXXO, Paynet, Yastás
- Recepción de depósitos, retiros y pagos a crédito
- Consulta de saldo
- Soporte para débito y crédito
- Conciliaciones y compensaciones
- Monitoreo transaccional y alertas

#### 📱 App Móvil y Web
> Pantallas y servicios listos para integrar en tu aplicación o portal.
- Administración de tarjeta (activación, bloqueo, renovación, cancelación)
- Cambio de NIP con OTP
- Tarjeta virtual con CVV dinámico
- Pagos a crédito desde cuenta
- Cobro de remesas

#### 🏧 Cajero Automático
> Operaciones de tarjeta desde tu red de cajeros, compatible con ISO8583.
- Pago de crédito con cargo a cuenta
- Cambio de NIP
- Bloqueo de tarjeta

#### 🏢 Sucursal
> Herramientas para el ejecutivo de cuenta en ventanilla o aplicativo de sucursal.
- Pagos con cargo a cuenta
- Cambio de NIP
- Bloqueo, renovación y cancelación de tarjeta

#### 📞 Call Center
> Operaciones autenticadas vía OTP para el ejecutivo telefónico.
- Autenticación del cliente con OTP
- Activación y cancelación de tarjeta
- Cambio de NIP con OTP
- Solicitud de renovación
- Bloqueo y tarjeta virtual con CVV dinámico

---

### SECTION 6 — Alcance Tecnológico
**Anchor:** `#tecnologia`
**Layout:** White background. 3-column grid (stacks on mobile). Each column is a card with icon + title + bullet list.

**Section Label:** `Alcance Tecnológico`
**Headline:**
> Construido para escalar. Diseñado para durar.

**Column 1 — Stack Tecnológico 🛠️**
- Software libre principalmente
- Python, Java, JavaScript / TypeScript
- Kubernetes como plataforma de orquestación
- Kafka para serialización y concurrencia
- Grafana para monitoreo
- Ambientes de desarrollo y QA incluidos

**Column 2 — Escalamiento 🚀**
- Escalamiento automático de CPU y memoria
- Hasta **1,000 TPS** de transacciones concurrentes
- Serialización de llamados con plataformas de streaming
- Procesamiento batch sin impacto en performance
- Despliegue en GCP, AWS u on-premises

**Column 3 — Seguridad 🔒**
- Infraestructura en nube pública con segmentación de redes
- Bóveda PCI-DSS Compliant (criptoseguridad)
- Cifrado de canal y de mensajes
- VPNs hacia institución financiera o terceros
- Compatible con certificación **PCI-DSS Nivel 1**

---

### SECTION 7 — IA & Innovación
**Anchor:** `#ia`
**Layout:** Dark blue gradient background (same as hero but lighter variant), white text. 3 cards in a row, each with icon, title, description.

**Section Label:** `Inteligencia Artificial`
**Headline:**
> IA integrada en el corazón de la operación

**Subheadline:**
> Usamos modelos de inteligencia artificial — desde modelos locales básicos hasta las últimas versiones disponibles — adaptados al presupuesto y necesidad de cada institución.

**3 AI Cards:**

#### 🔄 IA en Conciliación
> Automatización inteligente del proceso de conciliación de transacciones, reduciendo errores manuales y tiempos de cierre.

#### 🛡️ IA en Prevención de Fraude
> Detección proactiva de transacciones sospechosas mediante modelos de políticas adaptativas que aprenden del comportamiento de cada institución.

#### ⚙️ IA en Configuración de Canales
> Asistencia inteligente para la configuración óptima de canales de pago, reduciendo tiempos de integración y errores de configuración.

---

### SECTION 8 — Contacto / Footer
**Anchor:** `#contacto`
**Layout:** Light gray background for CTA strip, then dark navy footer.

**CTA Strip:**
**Headline:** `¿Listo para modernizar los pagos de tu institución?`
**Subheadline:** `Habla con nuestro equipo y descubre cómo CogniPay puede transformar tu operación.`
**Button:** `Solicitar Demo` (blue, large)

**Footer (dark navy `#0F172A`):**
- Left: CogniPay logo/wordmark + tagline: *"El estándar de pagos para instituciones financieras mexicanas."*
- Center: Nav links (same as header)
- Right: Contact info placeholder (`contacto@cognipay.mx`)
- Bottom bar: `© 2025 CogniPay. Todos los derechos reservados.`

---

## 5. Visual & UX Guidance for Dev

| Section | Layout Hint |
|---|---|
| Nav | Sticky, `z-50`, backdrop blur on scroll |
| Hero | `min-h-screen`, dark blue gradient, geometric SVG pattern overlay |
| Nosotros | 2-col grid (text + accent card), `gap-12` |
| Valor | 4-card grid `grid-cols-1 md:grid-cols-2 lg:grid-cols-4` |
| Plataforma | 3 horizontal stacked divs with arrows/connectors between them |
| Servicios | CSS tab bar on desktop, accordion on mobile (vanilla JS) |
| Tecnología | `grid-cols-3`, equal-height cards |
| IA | Dark gradient bg, 3 glassmorphism cards |
| Contacto | CTA strip + footer |

**General:**
- `scroll-behavior: smooth` on `<html>`
- Fade-in on scroll using Intersection Observer (vanilla JS)
- All sections have `py-20` padding
- Max width container: `max-w-7xl mx-auto px-6`

---

## 6. File Structure for Dev

```
project/cognipay-website/
├── ANA-BRIEF-001.md         ← this file
├── cognipay-content.txt     ← source PDF text
├── index.html               ← main deliverable (Dev builds this)
└── assets/
    └── (optional icons/images if needed)
```

---

## 7. Assumptions & Gaps

- **No logo file** provided — Dev should use a text wordmark (`CogniPay` in bold blue)
- **No contact info** in the PDF — using placeholder `contacto@cognipay.mx`
- **No imagery** — all visuals should be CSS/SVG-based (no stock photos needed)
- **Single page** — all sections on one `index.html`, anchor navigation
- Copy is entirely derived from the PDF; no invented claims beyond structuring existing content
- "Soporte de Tarjetas" accordion in the PDF has been organized into the Tarjetas service block

---

*Brief complete. Ready for Gate 1 approval → handoff to Dev.*
