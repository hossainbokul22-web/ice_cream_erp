# Ice Cream ERP - Architecture (SAP B1 Power + TallyPrime UX + Offline Android)

## Goal
Complete offline Android ERP for modern ice cream industry with:
- Recipe / BOM
- Tank management (Mixing + Aging)
- Batch Production with Overrun & Yield
- Full Batch Traceability + Expiry
- Actual Costing (Cost per Liter / Cup / Cone)
- TallyPrime style Vouchers + Profit & Loss

## Tech Stack
- Flutter 3.24+
- Drift (SQLite) - offline first
- Riverpod - state management
- GoRouter - navigation
- fl_chart / syncfusion_flutter_charts - reports
- pdf + excel - export
- path_provider + share_plus - backup

## Folder Structure
lib/
├── database/          # Drift tables + DAOs
├── models/            # Freezed / simple models
├── services/          # Business logic (Production, Costing, Stock, Accounting)
├── providers/         # Riverpod providers
├── screens/
│   ├── masters/
│   ├── production/
│   ├── inventory/
│   ├── accounts/
│   └── reports/
├── widgets/
└── utils/

## Core Principles
1. Every stock movement goes through stock_ledger
2. Production is stage-based (Planned → Mixing → Aging → Freezing → Completed)
3. Cost is calculated on Production Receipt (Actual)
4. Overrun is first-class citizen
5. Tanks are special locations with capacity control
