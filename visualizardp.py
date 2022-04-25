# -*- coding: utf-8 -*-
"""
Created on Sun Apr 24 22:43:06 2022

@author: SERGIO HUANCA
"""

import psycopg2 as pc #impirtamos libretira para utilizar bd postgress

conexion = pc.connect(user="postgres",
                      password="123456",
                      host="127.0.0.1",
                      port="5432",
                      database="BDSergioHuanca") 
cursor = conexion.cursor()
sql = "select avg(case when departamento='01' then notafinal end) CHUQUISACA, avg(case when departamento='02' then notafinal end) LAPAZ, avg(case when departamento='03' then notafinal end) COCHABAMBA, avg(case when departamento='04' then notafinal end) ORURO, avg(case when departamento='05' then notafinal end) POTOSI, avg(case when departamento='06' then notafinal end) TARIJA, avg(case when departamento='07' then notafinal end) SANTACRUZ from inscripcion i inner join persona pe on i.ciestudiante=pe.ci"
cursor.execute(sql)
registros = cursor.fetchall()
print("********VERFICA PROMEDIO DE NOTAS POR DEPARTAMENTO***********")
print("USANDO BASE DE DATOS POSTGRES")
print("**SERGIO LUIS HUANCA CUELLAR")
for registro in registros:
    print("CHUQUISACA: ",registro[0])
    print("LA PAZ: ",registro[1])
    print("COCHABAMBA: ",registro[2])
    print("ORURO: ",registro[3])
    print("POTOSI: ",registro[4])
    print("TARIJA: ",registro[5])
    print("SANTA CRUZ: ",registro[6])
cursor.close()
conexion.close()