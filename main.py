from tkinter import *
from ventana import *
from tkinter import *
from tkinter.ttk import *
from tkinter import messagebox

def main():
    root = Tk()
    root.wm_title("Registros")


    app = Ventana(root)
    app.mainloop()



index=Tk()
index.title("Adminitrador")
index.geometry("300x150")
index.resizable(width=False, height=False)
luser=Label(index, text="Usuario:")
luser.pack()

# encamsulamiento 

user=StringVar()
euser=Entry(index, width=20, textvariable=user)
euser.pack()

lpas=Label(index, text="Password:")
lpas.pack()

pas=StringVar()
epas=Entry(index, width=20, textvariable=pas, show="*")
epas.pack()
     # encapsulamiento = no mostrar el dato
def ingresar():
    if user.get()=="Akira" and pas.get()=="123":
        messagebox.showinfo(title="Inicio de sesión",message="Correcto")
        index.withdraw()
        main()

    else:
        messagebox.showinfo(title="Inicio de sesión",message="Incorrecto")
   
b1=Button(index, text="Entrar", command=ingresar)
b1.pack(side=BOTTOM)

index.mainloop()



 

