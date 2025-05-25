from typing import Any

UNUSED_GLOBAL = "no se usa"
ANOTHER_UNUSED = 123
UNUSED_VAR = "no se usa"

def saludar(nombre): 
    print("Hola " + nombre) 
 

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
 
def operacion_innecesaria(): 
    return True 

def calcular_area1(largo, ancho):
    return largo * ancho

def calcular_area2(l, a):
    return l * a

def procesar_datos(dato1, dato2, dato3, dato4, dato5):
    return dato1 + dato2 + dato3 + dato4 + dato5

def calcular_suma(a, b):
    temp = a + b
    resultado = temp * 2
    return temp

def leer_archivo(nombre):
    try:
        with open(nombre, 'r') as f:
            return f.read()
    except:
        return "Error"

saludar("Mundo") 
print(dividir(10, 0)) 