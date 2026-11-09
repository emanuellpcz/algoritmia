# Bisiesto.psc

## Tabla de decisión

| Regla | `anio MOD 4` | `anio MOD 100` | `anio MOD 400` | Resultado |
|:-----:|:------------:|:--------------:|:--------------:|-----------|
| R1 | ≠ 0 | Cualquiera | Cualquiera | Tu año no es bisiesto |
| R2 | = 0 | ≠ 0 | Cualquiera | Tu año es bisiesto felicidades |
| R3 | = 0 | = 0 | ≠ 0 | Tu año no es bisiesto |
| R4 | = 0 | = 0 | = 0 | Tu año es bisiesto felicidades |

## Prueba de escritorio

| PASO | anio | `MOD 4` | `MOD 100` | `MOD 400` | `(MOD 4 = 0 y MOD 100 <> 0)` | `MOD 400 = 0` | Condición | Salida |
|------|:----:|:-------:|:---------:|:---------:|:----------------------------:|:-------------:|:---------:|--------|
| **Caso 1: año común** | 
| Leer anio | 2023 |
| Calcular MODs | 2023 | 3 | 23 | 23 | 
| Evaluar condición | 2023 | 3 | 23 | 23 | F | F | **F** | Tu año no es bisiesto |
| **Caso 2: bisiesto normal** 
| Leer anio | 2024 | 
| Calcular MODs | 2024 | 0 | 24 | 24 |
| Evaluar condición | 2024 | 0 | 24 | 24 | V | F | **V** | Tu año es bisiesto felicidades |
| **Caso 3: divisible por 100 pero no por 400** |
| Leer anio | 1900 | 
| Calcular MODs | 1900 | 0 | 0 | 300 | 
| Evaluar condición | 1900 | 0 | 0 | 300 | F | F | **F** | Tu año no es bisiesto |
| **Caso 4: divisible por 400** |
| Leer anio | 2000 | 
| Calcular MODs | 2000 | 0 | 0 | 0 | 
| Evaluar condición | 2000 | 0 | 0 | 0 | F | V | **V** | Tu año es bisiesto felicidades |

---

# Parquedero.psc

## Tabla de decisión

| Regla | Tipo | Minutos | Factura | Resultado |
|:-----:|:----:|:-------:|:-------:|-----------|
| R1 | Ni `m` ni `c` | Cualquiera | Cualquiera | Error: Dato invalido escribalo nuevamente (repite la pregunta) |
| R2 | `m` o `c` | Menos de 0 | Cualquiera | Error: Dato invalido, vuelva a ingresar la informacion (repite la pregunta) |
| R3 | `m` o `c` | De 0 a 15 | No se pregunta | Gratis: Puedes irte no hay cobro alguno |
| R4 | `m` o `c` | Más de 15 | Distinta de `s` | Horas × tarifa, máximo $30.000 |
| R5 | `m` o `c` | Más de 15 | `s` | Lo mismo que R4, dividido entre 2 |

Tarifas: carro (`c`) $4.000 por hora, moto (`m`) $2.000 por hora.
Horas = `trunc(Minutos / 60)`, y se suma 1 si `Minutos MOD 60 > 0`.

## Prueba de escritorio

### Caso 1: carro · 600 minutos · con factura

| PASO | Tipo | Minutos | Fact | i | MHoras | Horas | Total |
|------|:----:|:-------:|:----:|:-:|:------:|:-----:|:-----:|
| Inicio | | | | 0 |
| Leer tipo | c | | | 0 | 
| Validar tipo (`c` es válido) | c | | | 1 | 
| Salir del primer Repetir (i = 1) → i = 0 | c | | | 0 | 
| Leer minutos | c | 600 | | 0 | | | |
| Validar minutos (600 ≥ 0) | c | 600 | | 1 | 
| ¿Minutos ≥ 0 y ≤ 15? → No | c | 600 | | 1 | 
| Calcular MHoras (600 MOD 60) | c | 600 | | 1 | 0 | 
| Calcular Horas (600 / 60, trunc) | c | 600 | | 1 | 0 | 10 | |
| ¿MHoras > 0? → No | c | 600 | | 1 | 0 | 10 | |
| Tarifa carro: 10 × 4000 | c | 600 | | 1 | 0 | 10 | 40000 |
| Aplica tope (40000 > 30000) | c | 600 | | 1 | 0 | 10 | 30000 |
| Leer factura | c | 600 | s | 1 | 0 | 10 | 30000 |
| Aplica factura (30000 / 2) | c | 600 | s | 1 | 0 | 10 | **15000** |

Salida: `Valor a pagar: $15000` → `Feliz dia`

### Caso 2: moto · 90 minutos · sin factura

| PASO | Tipo | Minutos | Fact | i | MHoras | Horas | Total |
|------|:----:|:-------:|:----:|:-:|:------:|:-----:|:-----:|
| Leer y validar tipo | m | | | 1 | 
| Leer y validar minutos | m | 90 | | 1 | 
| ¿Minutos ≥ 0 y ≤ 15? → No | m | 90 | | 1 |
| Calcular MHoras (90 MOD 60) | m | 90 | | 1 | 30 |
| Calcular Horas (90 / 60 = 1.5, trunc) | m | 90 | | 1 | 30 | 1 | 
| ¿MHoras > 0? → Sí, Horas + 1 | m | 90 | | 1 | 30 | 2 | 
| Tarifa moto: 2 × 2000 | m | 90 | | 1 | 30 | 2 | 4000 |
| Tope (4000 ≤ 30000), no aplica | m | 90 | | 1 | 30 | 2 | 4000 |
| Leer factura | m | 90 | n | 1 | 30 | 2 | 4000 |
| Factura ≠ `s`, no hay descuento | m | 90 | n | 1 | 30 | 2 | **4000** |

Salida: `Valor a pagar: $4000` → `Feliz dia`

### Caso 3: carro · 10 minutos (gratis)

| PASO | Tipo | Minutos | Fact | i | MHoras | Horas | Total |
|------|:----:|:-------:|:----:|:-:|:------:|:-----:|:-----:|
| Leer y validar tipo | c | | | 1 |
| Leer y validar minutos | c | 10 | | 1 |
| ¿Minutos ≥ 0 y ≤ 15? → Sí | c | 10 | | 1 | 

Salida: `Puedes irte no hay cobro alguno` → `Feliz dia` (no se pide factura)

### Caso 4: carro · 0 minutos (límite, gratis)

| PASO | Tipo | Minutos | Fact | i | MHoras | Horas | Total |
|------|:----:|:-------:|:----:|:-:|:------:|:-----:|:-----:|
| Leer y validar tipo | c | | | 1 | 
| Leer minutos → 0 | c | 0 | | 0 | 
| ¿Minutos < 0? → No, i = 1 | c | 0 | | 1 | 
| ¿Minutos ≥ 0 y ≤ 15? → Sí | c | 0 | | 1 | 

Salida: `Puedes irte no hay cobro alguno` → `Feliz dia`

### Caso 5: datos inválidos y reintentos (moto · 16 minutos · sin factura)

| PASO | Tipo | Minutos | Fact | i | MHoras | Horas | Total |
|------|:----:|:-------:|:----:|:-:|:------:|:-----:|:-----:|
| Leer tipo → `x` | x | | | 0 | | | |
| Tipo inválido: "Dato invalido escribalo nuevamente" | x | | | 0 | 
| Leer tipo → `M` (se usa `Minusculas`) | M | | | 1 | 
| Leer minutos → -5 | M | -5 | | 0 | 
| Minutos < 0: "Dato invalido, vuelva a ingresar la informacion" | M | -5 | | 0 | 
| Leer minutos → 16 | M | 16 | | 1 | | | |
| ¿Minutos ≥ 0 y ≤ 15? → No (16 > 15) | M | 16 | | 1 | 
| MHoras = 16 MOD 60 | M | 16 | | 1 | 16 | | |
| Horas = trunc(16 / 60) = 0 | M | 16 | | 1 | 16 | 0 | |
| MHoras > 0 → Horas = 1 | M | 16 | | 1 | 16 | 1 | |
| Tarifa moto: 1 × 2000 | M | 16 | | 1 | 16 | 1 | 2000 |
| Leer factura → `n` | M | 16 | n | 1 | 16 | 1 | **2000** |

Salida: `Valor a pagar: $2000` → `Feliz dia`

---

# Semaforo_1.psc

## Tabla de decisión

| Regla | Unidades | Resultado |
|:-----:|:--------:|-----------|
| R1 | Menos de 0 | ERROR: Datos negativos detectados |
| R2 | 0 | ROJO: Sin unidades disponibles |
| R3 | De 1 a 10 | AMARILLO: Poco inventario |
| R4 | Más de 10 | VERDE: Inventario disponible |

## Prueba de escritorio

| PASO | Unidades | `< 0` | `= 0` | `>= 1 y <= 10` | Salida |
|------|:--------:|:-----:|:-----:|:--------------:|--------|
| **Caso 1** | 
| Leer Unidades | -5 | 
| Evaluar | -5 | V | | | ERROR: Datos negativos detectados |
| **Caso 2** | 
| Leer Unidades | 0 | 
| Evaluar | 0 | F | V | | ROJO: Sin unidades disponibles |
| **Caso 3: límite inferior** | 
| Leer Unidades | 1 | 
| Evaluar | 1 | F | F | V | AMARILLO: Poco inventario |
| **Caso 4: límite superior** | 
| Leer Unidades | 10 | | | | |
| Evaluar | 10 | F | F | V | AMARILLO: Poco inventario |
| **Caso 5** | | | | | |
| Leer Unidades | 11 | | | | |
| Evaluar | 11 | F | F | F | VERDE: Inventario disponible |

---

# ValidarEdad_1.psc

## Tabla de decisión

| Regla | `edad < 0` | `edad > 120` | Resultado |
|:-----:|:----------:|:------------:|-----------|
| R1 | Sí | No | Edad invalida |
| R2 | No | Sí | Edad invalida |
| R3 | No | No (de 0 a 120) | Edad valida |

## Prueba de escritorio

| PASO | edad | `edad < 0` | `edad > 120` | `o` | Salida |
|------|:----:|:----------:|:------------:|:---:|--------|
| Leer edad | -1 | V | F | **V** | Edad invalida |
| Leer edad | 0 | F | F | **F** | Edad valida |
| Leer edad | 25 | F | F | **F** | Edad valida |
| Leer edad | 120 | F | F | **F** | Edad valida |
| Leer edad | 121 | F | V | **V** | Edad invalida |

---

# ValidarRegistro_1.psc

## Tabla de decisión

| Regla | `edad >= 14` | `respuesta = "S"` | Resultado |
|:-----:|:------------:|:-----------------:|-----------|
| R1 | Sí | Sí | Registro exitoso |
| R2 | Sí | No | No puedes registrarte |
| R3 | No | Sí | No puedes registrarte |
| R4 | No | No | No puedes registrarte |

## Prueba de escritorio

| PASO | edad | respuesta | `edad >= 14` | `respuesta = "S"` | `Y` | Salida |
|------|:----:|:---------:|:------------:|:-----------------:|:---:|--------|
| **Caso 1** | | | | | | |
| Leer edad | 20 | | | | | |
| Leer respuesta | 20 | s | | | | |
| Mayusculas | 20 | S | | | | |
| Evaluar | 20 | S | V | V | **V** | Registro exitoso |
| **Caso 2: límite** | | | | | | |
| Leer edad y respuesta | 14 | s | | | | |
| Mayusculas | 14 | S | | | | |
| Evaluar | 14 | S | V | V | **V** | Registro exitoso |
| **Caso 3** | | | | | | |
| Leer edad y respuesta | 13 | S | | | | |
| Evaluar | 13 | S | F | V | **F** | No puedes registrarte |
| **Caso 4** | | | | | | |
| Leer edad y respuesta | 20 | n | | | | |
| Mayusculas | 20 | N | | | | |
| Evaluar | 20 | N | V | F | **F** | No puedes registrarte |
| **Caso 5** | | | | | | |
| Leer edad y respuesta | 10 | N | | | | |
| Evaluar | 10 | N | F | F | **F** | No puedes registrarte |
