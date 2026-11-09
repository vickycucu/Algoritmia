# Algoritmos en PSeInt: Validaciones y Cobro de Parqueadero

Colección de algoritmos escritos en pseudocódigo (PSeInt) para practicar estructuras condicionales, validación de datos y casos de prueba. Cada algoritmo incluye su tabla de verdad o de decisión, sus casos de prueba y, cuando aplica, una prueba de escritorio.

## Contenido

| Archivo | Algoritmo | Descripción breve |
| ------- | --------- | ----------------- |
| `AnoBisiesto.psc` | `AnoBisiesto` | Determina si un año es bisiesto. |
| `Parqueadero.psc` | `CobroParqueadero_ConCasosBorde` | Calcula el cobro de parqueadero para carros y motos. |
| `Semaforo.psc` | `Semaforo` | Clasifica un inventario según la cantidad de unidades. |
| `ValidarEdad.psc` | `ValidarEdad` | Valida una edad y determina si es mayor de 18 años. |
| `ValidarRegistro.psc` | `ValidarRegistro` | Verifica edad mínima y aceptación de términos para registrarse. |

## Cómo ejecutar

1. Abrir PSeInt.
2. Cargar el archivo `.psc` deseado con **Archivo > Abrir**.
3. Ejecutar con **Ejecutar** (o `F9`) e ingresar los datos cuando el programa los solicite.

## Algoritmos

### 1. Año bisiesto (`AnoBisiesto`)

Un año es bisiesto si es divisible entre 4 y no entre 100, **o** si es divisible entre 400.

```
(ano MOD 4 = 0 Y ano MOD 100 <> 0) O (ano MOD 400 = 0)
```

### 2. Cobro de parqueadero (`CobroParqueadero_ConCasosBorde`)

Recibe el tipo de vehículo, los minutos de permanencia y si el usuario presenta factura de compra en el centro comercial.

**Tarifas y reglas:**

| Concepto | Valor |
| -------- | ----- |
| Tarifa por hora, carro | $4.000 |
| Tarifa por hora, moto | $2.000 |
| Tope máximo para carro | $30.000 |
| Tiempo de gracia | Hasta 15 minutos (gratis) |
| Descuento con factura | 50% sobre el cobro base |

Las horas se redondean hacia arriba: cualquier fracción de hora cuenta como una hora completa. El tope de $30.000 se aplica al carro antes del descuento por factura.

**Tabla de decisión:**

| Regla | Tipo | Minutos | Factura | Resultado |
| ----- | ---- | ------- | ------- | --------- |
| R1 | Cualquiera | Menos de 0 | Cualquiera | Error: minutos negativos |
| R2 | Distinto de carro o moto | 0 o más | Cualquiera | Error: tipo no válido |
| R3 | Carro o moto | De 0 a 15 | Cualquiera | Gratis |
| R4 | Carro o moto | Más de 15 | No | Horas × tarifa, máximo $30.000 |
| R5 | Carro o moto | Más de 15 | Sí | Lo mismo que R4, dividido entre 2 |

**Casos borde:**

| # | Tipo | Minutos | Factura | Horas | Esperado |
| - | ---- | ------- | ------- | ----- | -------- |
| 1 | Carro | 15 | No | – | $0 |
| 2 | Carro | 16 | No | 1 | $4.000 |
| 3 | Carro | 60 | No | 1 | $4.000 |
| 4 | Carro | 61 | No | 2 | $8.000 |
| 5 | Moto | 61 | Sí | 2 | $2.000 |
| 6 | Carro | 600 | No | 10 | $30.000 (tope) |
| 7 | Carro | 600 | Sí | 10 | $15.000 |
| 8 | Tipo "3" | 30 | No | – | Tipo no válido |
| 9 | Carro | -5 | No | – | Minutos negativos |

**Prueba de escritorio, caso 4 (carro, 61 minutos, sin factura):**

| Paso | Tipo | Min | Fact | Tarifa | Horas | Valor |
| ---- | ---- | --- | ---- | ------ | ----- | ----- |
| Lee datos | carro | 61 | No | | | |
| Según tipo | carro | 61 | No | 4000 | | |
| Calcula horas | carro | 61 | No | 4000 | 2 | |
| Calcula valor | carro | 61 | No | 4000 | 2 | 8000 |
| Aplica tope | carro | 61 | No | 4000 | 2 | 8000 |
| Aplica factura | carro | 61 | No | 4000 | 2 | 8000 |

**Prueba de escritorio, caso 5 (moto, 61 minutos, con factura):**

| Paso | Tipo | Min | Fact | Tarifa | Horas | Valor |
| ---- | ---- | --- | ---- | ------ | ----- | ----- |
| Lee datos | moto | 61 | Sí | | | |
| Según tipo | moto | 61 | Sí | 2000 | | |
| Calcula horas | moto | 61 | Sí | 2000 | 2 | |
| Calcula valor | moto | 61 | Sí | 2000 | 2 | 4000 |
| Aplica tope | moto | 61 | Sí | 2000 | 2 | 4000 |
| Aplica factura | moto | 61 | Sí | 2000 | 2 | 2000 |

### 3. Semáforo de inventario (`Semaforo`)

Clasifica una cantidad de unidades según el nivel de existencias.

| Unidades | Mensaje |
| -------- | ------- |
| Menor que 0 | `error` |
| 0 | `rojo: agotado` |
| De 1 a 10 | `amarillo: pedir` |
| Mayor que 10 | `verde: todo bien` |

### 4. Validación de edad (`ValidarEdad`)

Verifica que la edad esté en el rango de 0 a 120 y, si lo está, indica si la persona es mayor de edad.

**Tabla de verdad:**

| R1: Edad < 0 | R2: Edad > 120 | R1 ó R2 | Resultado |
| :----------: | :------------: | :-----: | --------- |
| V | V | V | Edad inválida |
| V | F | V | Edad inválida |
| F | V | V | Edad inválida |
| F | F | F | Edad válida |

**Casos de prueba:**

| Edad | Esperado | Obtenido |
| :--: | -------- | -------- |
| `-1` | Edad inválida | Edad inválida |
| `0` | Edad válida | Edad válida |
| `120` | Edad válida | Edad válida |
| `121` | Edad inválida | Edad inválida |

### 5. Validación de registro (`ValidarRegistro`)

Permite el registro solo si la edad es de 14 años o más **y** el usuario acepta los términos (`S`). La respuesta se convierte a mayúsculas, por lo que `s` y `S` son equivalentes.

**Tabla de verdad:**

| Edad ≥ 14 | Acepta (S) | Resultado |
| :-------: | :--------: | --------- |
| V | V | Registro exitoso |
| V | F | No puedes registrarte |
| F | V | No puedes registrarte |
| F | F | No puedes registrarte |

**Casos de prueba:**

| Edad | Respuesta | Esperado | Obtenido |
| :--: | :-------: | -------- | -------- |
| `14` | S | Se registra | Se registra |
| `13` | S | No se registra | No se registra |
| `30` | n | No se registra | No se registra |
| `14` | s | Se registra | Se registra |

## Notas

- **Algoritmo sin casos de prueba documentados:** `Semaforo` no tiene tabla de casos en este repositorio. Los valores esperados de la tabla anterior se derivan directamente del código.
- **Entradas del parqueadero:** el algoritmo pide el tipo de vehículo como texto (`Carro` / `Moto`). Los logs de ejecución de la documentación de pruebas muestran una versión con entrada numérica (`1` = carro, `2` = moto). Antes de ejecutar las pruebas, verificar que el `.psc` y los logs usen el mismo formato.
- **Textos de salida:** algunos logs de la documentación usan frases ligeramente distintas a las del código (por ejemplo, `Cuantos años tienes?` frente a `¿Cuántos años tienes?`). Los logs reflejan la salida esperada de forma resumida.
