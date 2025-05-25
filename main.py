def saludar(nombre): 
    print("Hola " + nombre) 
 
def dividir(a, b): 
    if b == 0: 
        return "Error: división por cero" 
    return a / b 
 
saludar("Mundo") 
print(dividir(10, 0))