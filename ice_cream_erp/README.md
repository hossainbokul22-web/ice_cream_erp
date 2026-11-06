# Ice Cream ERP (Offline Android)

**SAP Business One level power + TallyPrime style UX + Modern Ice Cream Industry**

সম্পূর্ণ অফলাইন Android ERP অ্যাপ। আইসক্রিম ফ্যাক্টরির জন্য বিশেষভাবে ডিজাইন করা।

## Features

### Production
- Recipe / BOM with Target Overrun & Yield
- Production Order (Batch)
- Material Issue (Batch-wise)
- Mixing Tank & Aging Tank management
- Actual Overrun % calculation
- Yield tracking
- Cost per Liter (Mix + Finished)

### Inventory
- Item Master (Raw, Packaging, Mix, Finished)
- Batch + Expiry tracking (FEFO)
- Stock Ledger
- Tank capacity & status

### Accounting (Tally Style)
- Vouchers (Purchase, Sales, Payment, Receipt, Journal)
- Basic Profit & Loss

### Reports
- Stock Summary with batches
- Production cost breakdown
- Tank dashboard

## Tech Stack
- Flutter
- Drift (SQLite) – fully offline
- Riverpod
- GoRouter

## How to Run

```bash
# 1. Clone / open the project
cd ice_cream_erp

# 2. Get dependencies
flutter pub get

# 3. Generate Drift code (IMPORTANT)
dart run build_runner build --delete-conflicting-outputs

# 4. Run on Android device/emulator
flutter run
```

## Project Structure

```
lib/
├── database/          # Drift tables + AppDatabase
├── services/          # ProductionService, CostingService, StockService
├── providers/         # Riverpod
├── screens/
│   ├── dashboard/
│   ├── masters/       # Item, Recipe, Tank
│   ├── production/    # Order list, Create, Detail (full flow)
│   ├── inventory/
│   ├── accounts/
│   └── reports/
└── main.dart
```

## Production Flow

1. Create Production Order (select Recipe + Target Mix Qty + Tanks)
2. Issue Materials
3. Complete Mixing (enter Actual Mix Qty)
4. Move to Aging
5. Complete Freezing → enter Finished Qty → System calculates Overrun + Cost per Liter

## Important Formulas

**Overrun %** = (Finished Volume − Mix Volume) / Mix Volume × 100

**Cost per Liter Finished** = (Material Cost ÷ Mix Qty) ÷ (1 + Overrun/100)

## Next Improvements (Future)
- Full batch selection UI during material issue
- Packaging auto-consumption
- Multi-level BOM
- Detailed P&L with production cost
- PDF/Excel export
- Backup to Google Drive / local file
- User login & roles

---

Developed for modern ice cream industry (Mixing Tank, Aging Tank, Overrun, Cost per Liter).
