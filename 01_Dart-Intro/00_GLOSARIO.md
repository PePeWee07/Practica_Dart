# 📖 Glosario de Dart en criollo

> Cada palabra técnica → qué significa en cristiano → dónde YA la usaste en tu código.
> Vuelve aquí cada vez que una palabra te suene a chino.

---

## 🧱 Los 4 conceptos base

| Palabra técnica | En criollo | Ejemplo de tu código |
|---|---|---|
| **Clase** (`class`) | El **molde** / la receta. NO es la cosa, es el plano para fabricarla. | `class Hero { ... }` en `06_class.dart` |
| **Objeto** / **Instancia** | El **producto ya fabricado** con el molde. La galleta, no el molde de galletas. | `wolverine` en `06_class.dart` ES una instancia de `Hero` |
| **Instanciar** | El **acto de fabricar** el objeto usando el molde. | Cuando escribes `Hero(name: 'Logam', ...)` estás *instanciando* |
| **Atributo / Propiedad / Campo** (*field*) | Lo que el objeto **ES / tiene** (sus datos). | `name`, `power` en `Hero` |
| **Método** (*method*) | Lo que el objeto **HACE** (una función dentro de la clase). | `consumeEnergy()`, `nadar()` |

> 🔑 **La frase que tienes que memorizar:**
> *"La **clase** es el molde. La **instancia** (u **objeto**) es lo que sale del molde.
> **Instanciar** es el momento en que aprietas el molde."*
>
> Ejemplo: en `06_class.dart`, `Hero` es el molde 🧇 y `wolverine` es el waffle ya hecho 🧇✅.

---

## 🔨 Constructor y compañía

| Palabra | En criollo | Ejemplo tuyo |
|---|---|---|
| **Constructor** | La **máquina del molde**: se ejecuta al instanciar y le pone los datos iniciales al objeto. | `Hero({required this.name, ...})` |
| **Constructor con nombre** (*named constructor*) | Una **segunda forma de fabricar** el mismo objeto (otra entrada a la fábrica). | `Hero.fromJson(...)` en `07_constructor.dart` |
| **`this`** | "**yo mismo**", el objeto que se está fabricando ahora. `this.name` = "mi propio name". | `Hero({required this.name})` |
| **`required`** | "este dato es **obligatorio**, no me dejes fabricar sin él". | `required this.name` |

---

## 👨‍👦 Herencia, contratos y poderes (¡tu tema estrella!)

Esta es **LA tabla** que tienes que tener tatuada:

| Palabra | En criollo | ¿Te regala código ya hecho? | ¿Cuántos puedes tener? |
|---|---|:---:|:---:|
| **`extends`** | "**soy hijo de**" → heredo TODO lo de mi papá gratis | ✅ **Sí**, todo heredado | 🚫 **Solo 1 papá** |
| **`implements`** | "**firmo un contrato / una promesa**" → me obligo a tener esos métodos, pero los escribo YO desde cero | ❌ **No**, reescribes todo | ✅ **Varios contratos** |
| **`with`** (mixin) | "**me instalo un kit de poderes**" → reúso habilidades sin ser hijo de nadie | ✅ **Sí**, los poderes del kit | ✅ **Varios kits** |

### 🔍 Mira la diferencia en TU PROPIO código (`09_abstract_class.dart`):

```dart
// EXTENDS = "soy hijo": usa super(...) para reaprovechar al padre.
class WindPlant extends EnergyPlant {
  WindPlant({required double initailEnergy})
      : super(energyLeft: initailEnergy, type: Plantype.wind); // 👈 llama a papá
}

// IMPLEMENTS = "firmo el contrato": fíjate que tuviste que poner @override
// en energyLeft, en type, en TODO... porque NO heredas nada, lo escribes tú.
class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;          // 👈 lo reescribiste tú
  @override
  Plantype type = Plantype.nuclear;  // 👈 esto también
  // ...
}
```

> 🔑 **Regla mental:**
> - ¿Quiero **reusar el código** del padre? → `extends` (+ `super`).
> - ¿Solo quiero **obligarme a cumplir una forma/promesa** y lo hago yo? → `implements`.
> - ¿Quiero **pegar habilidades sueltas** a varias clases distintas? → `mixin` + `with`.

---

## 🏷️ Palabras que acompañan a la herencia

| Palabra | En criollo | Ejemplo tuyo |
|---|---|---|
| **`super`** | "**llamar a papá**": usar el constructor o un método del padre. | `super(energyLeft: ..., type: ...)` en `WindPlant` |
| **`@override`** | "**piso / reemplazo**" el método del padre con mi propia versión. | `@override String toString()` en `Hero` |
| **`abstract`** | Molde **incompleto**: no se puede instanciar directo, solo sirve para que otros hereden de él. | `abstract class EnergyPlant` |
| **Método abstracto** | Método **sin cuerpo** (solo la firma); obliga a los hijos a escribirlo. | `void consumeEnergy(double amount);` (sin `{}`) |
| **`mixin`** | Un **paquete de métodos reutilizables** que se enchufa con `with`. NO es un padre. | `mixin Volador { void volar() ... }` en `10_mixins.dart` |
| **`enum`** | Una **lista cerrada de opciones** con nombre. | `enum Plantype { nuclear, wind, water }` |

---

## ⭐ Bonus (cuando ya te sientas cómodo)

| Palabra | En criollo |
|---|---|
| **`on`** (en mixins) | "este kit de poderes **solo se puede pegar a** cierta clase", y así el mixin puede usar los datos de esa clase. Ej: `mixin Curador on Personaje`. |
| **Getter / Setter** | Métodos disfrazados de atributo para **leer** (getter) o **escribir** (setter) algo de forma controlada. Ya los viste en `08_getter_setter.dart`. |
| **Polimorfismo** | Palabra fea para algo simple: "**la misma orden, distinto resultado** según quién la reciba". Cuando llamas `atacar()` y un Guerrero pega con espada y un Mago con fuego → eso es polimorfismo. |

---

*Hecho por tu tutor 🤖. ¿Una palabra no está aquí? Pídemela y la agrego.*
