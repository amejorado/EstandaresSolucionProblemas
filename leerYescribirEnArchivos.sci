''''''''''''''''''''''''''''''''''''''''''''''
' Ricardo Salgado
''''''''''''''''''''''''''''''''''''''''''''''
function nuevoStr=leerYcodificar(dist)
    strCaracteres=('0':'9')+' '+('A':'Z');
    strCaracteresCodigo=generaCodigoCesar(strCaracteres,dist);
    
    vStrCaracteres=strsplit(strCaracteres);
    longitudStrCaracteres=size(vStrCaracteres);
    vStrCaracteresCodigo=strsplit(strCaracteresCodigo);
    
    str=input('Dame el texto a codificar: ');
    vStr=strsplit(str);
    sz=size(vStr);
    nuevoStr='';
    posicionCodigo=0;
    for i=1:sz(1)
        posicionCodigo=posicionCaracter(vStr(i),vStrCaracteres,longitudStrCaracteres(1));
        if (posicionCodigo<>0) then
            nuevoStr=nuevoStr+vStrCaracteresCodigo(posicionCodigo);
        end
    end
    disp('Texto codificado--[' + nuevoStr + ']');
endfunction

function mayusculizarArchivo(nombreArchivoEntrada,nombreArchivoSalida)
    archEntrada=mopen(nombreArchivoEntrada,'r');
    archSalida=mopen(nombreArchivoSalida,'w');
    lineaTexto=mgetl(archEntrada,1);
    while (meof(archEntrada)==0)
        lineaTextoMayus=convstr(lineaTexto,'u');
        disp(lineaTexto+'...['+lineaTextoMayus+']');
        mputl(lineaTextoMayus,archSalida);
        lineaTexto=mgetl(archEntrada,1);
    end
    mclose(archEntrada);
    mclose(archSalida);
endfunction

function minusculizarArchivo(nombreArchivoEntrada,nombreArchivoSalida)
    archEntrada=mopen(nombreArchivoEntrada,'r');
    archSalida=mopen(nombreArchivoSalida,'w');
    lineaTexto=mgetl(archEntrada,1);
    while (meof(archEntrada)==0)
        lineaTextoMayus=convstr(lineaTexto,'l');
        disp(lineaTexto+'...['+lineaTextoMayus+']');
        mputl(lineaTextoMayus,archSalida);
        lineaTexto=mgetl(archEntrada,1);
    end
    mclose(archEntrada);
    mclose(archSalida);
endfunction

