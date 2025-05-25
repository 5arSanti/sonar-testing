from typing import Any

UNUSED_GLOBAL = "no se usa"
ANOTHER_UNUSED = 123

# Variables no utilizadas
UNUSED_VAR = "no se usa"

def saludar(nombre): 
    print("Hola " + nombre) 
 
def dividir(a, b): 
    return a / b 
 
saludar("Mundo") 
print(dividir(10, 0)) 
 

def sumar(a, b): 
    return a + b 
 
def restar(a, b): 
    return a - b 
def multiplicar(a, b): 
    return a * b 
 
def dividir(a, b): 
    if b == 0: 
        return "Error: división por cero" 
    return a / b 

 
def operacion_innecesaria(x): 
    if x > 0: 
        return True 
    else: 
        return True 

# Función con código duplicado
def calcular_area1(largo, ancho):
    return largo * ancho

def calcular_area2(l, a):
    return l * a

# Función con manejo inseguro de datos
def dividir(a, b):
    return a / b  # No maneja división por cero

# Función con demasiados parámetros
def procesar_datos(dato1, dato2, dato3, dato4, dato5):
    return dato1 + dato2 + dato3 + dato4 + dato5

# Función con variables no utilizadas
def calcular_suma(a, b):
    temp = a + b
    resultado = temp * 2  # Variable no utilizada
    return temp

# Función con manejo de excepciones genérico
def leer_archivo(nombre):
    try:
        with open(nombre, 'r') as f:
            return f.read()
    except:
        return "Error"  # Captura todas las excepciones
