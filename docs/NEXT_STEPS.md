# Next Development Steps

## Immediate (Phase 1 - Core)
- [x] Database Schema (Drift tables)
- [x] AppDatabase setup
- [x] ProductionService (full flow)
- [x] CostingService
- [x] StockService
- [ ] Generate Drift code (`dart run build_runner build`)
- [ ] Riverpod providers
- [ ] Basic Masters screens (Item, Recipe, Tank, Party)
- [ ] Production Order Create + Issue + Complete screens

## Phase 2 - Accounting
- [ ] Voucher entry (Purchase, Sales, Payment, Receipt, Journal)
- [ ] Party Ledger
- [ ] Profit & Loss statement
- [ ] Stock Valuation report

## Phase 3 - Reports & Polish
- [ ] Daily Production Report
- [ ] Material Consumption Report
- [ ] Batch Traceability (Forward + Backward)
- [ ] Expiry Alert dashboard
- [ ] Tank Dashboard
- [ ] PDF / Excel export
- [ ] Local Backup & Restore

## Phase 4 - Advanced
- [ ] Multi-level BOM (Base Mix → Flavored Mix)
- [ ] Packaging material auto consumption on receipt
- [ ] Cost center / overhead allocation
- [ ] User roles & permissions
- [ ] Dark / Light theme (Tally-like dense UI)

## How to Run (after completing models)
```bash
flutter pub get
dart run build_runner build --delete-conflicting-outputs
flutter run
```
