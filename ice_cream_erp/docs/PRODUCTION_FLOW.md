# Production Flow - Ice Cream ERP

## Stages

```
Planned → Mixing → Aging → Freezing → Completed
```

## Detailed Steps in App

### 1. Create Production Order
- Select Recipe (e.g. Vanilla Premium)
- Enter Target Mix Quantity (Liters)
- System auto-calculates required Raw Materials (scaled + wastage)
- Select Mixing Tank & Aging Tank
- Save → Status = Planned

### 2. Issue Materials
- View required materials
- Select Batch for each Raw Material (FEFO suggested)
- Confirm Issue
- Stock reduced, ProductionIssues created
- Status → Mixing
- Mixing Tank marked InUse

### 3. Complete Mixing
- Enter Actual Mix Quantity produced
- System records yield
- Ready to transfer to Aging

### 4. Move to Aging
- Transfer from Mixing Tank → Aging Tank
- Mixing Tank becomes Empty
- Aging Tank InUse
- Status → Aging
- (Optional timer / aging hours tracking later)

### 5. Complete Freezing & Receipt
- Enter Actual Finished Quantity (Liters after overrun)
- System calculates:
  - Actual Overrun % = (Finished - Mix) / Mix × 100
  - Cost per Liter Finished
- Create Finished Goods Batch
- Stock In + Production Receipt
- Clear Aging Tank
- Status → Completed

## Key Formulas Used

**Overrun %**
```
(Finished Volume - Mix Volume) / Mix Volume × 100
```

**Cost per Liter Finished**
```
(Total Material Cost ÷ Actual Mix Qty) ÷ (1 + Overrun/100)
```

**Required Mix for Target Finished**
```
Desired Finished Qty ÷ (1 + Target Overrun/100)
```

## Tank Rules
- One active batch per Mixing Tank at a time
- Aging Tanks can hold one batch (capacity checked)
- Capacity validation before transfer
- Status: Empty / InUse / Cleaning
