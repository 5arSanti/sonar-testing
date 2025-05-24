def saludar(nombre): 
    print("Hola " + nombre) 
 
def dividir(a, b): 
    return a / b 
 
saludar("Mundo") 
print(dividir(10, 0)) 
 
utilidades.py : 
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
