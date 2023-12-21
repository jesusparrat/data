import json

def leer_diccionario():
    fichero = open("usuarios.txt")
    usuarios = json.load(fichero)
    fichero.close()
    return usuarios

def guardar_diccionario(usuarios):
    fichero = open("usuarios.txt","w")
    json.dump(usuarios, fichero)
    fichero.close()

def crear_usuario(usuarios):
    dni = input("DNI: ")
    nombre = input("Nombre: ")
    apellido1 = input("Apellido1: ")
    apellido2 = input("Apellido2: ")
    datos = {
        "nombre":nombre,
        "apellido1":apellido1,
        "apellido2":apellido2
    }
    usuarios[dni] = datos
    return usuarios

def buscar_usuario(usuarios):
    dni = input("DNI: ")
    if dni in usuarios:
        print(usuarios[dni]["nombre"])
        print(usuarios[dni]["apellido1"])
        print(usuarios[dni]["apellido2"])
    else:
        print("No existe ningún usuario con el dni", dni)

usuarios = leer_diccionario()

while True:
    print("Selecciona una opción:")
    print("1. Crear usuario")
    print("2. Buscar usuario")
    
    opcion = input("Tu opción: ")
    
    if opcion == "1":
        usuarios = crear_usuario(usuarios)
        guardar_diccionario(usuarios1)
        print(usuarios)
    elif opcion == "2":
        buscar_usuario(usuarios)
    else:
        print("Opción incorrecta")
