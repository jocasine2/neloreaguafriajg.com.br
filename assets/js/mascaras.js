/*----------------------------------------------------------------------------
Formatação para qualquer mascara
-----------------------------------------------------------------------------*/
function formatar(src, mask){
  var i = src.value.length;
  var saida = mask.substring(0,1);
  var texto = mask.substring(i);
  if (texto.substring(0,1) != saida)
    {
      src.value += texto.substring(0,1);
    }
}

function SomenteNumero(e){
    var tecla=(window.event)?event.keyCode:e.which;   
    if((tecla>47 && tecla<58)) return true;
    else{
      if (tecla==8 || tecla==0) return true;
      else  return false;
    }
}

function moeda(z){
  v = z.value;
  v=v.replace(/\D/g,"") // permite digitar apenas numero
  v=v.replace(/(\d{1})(\d{14})$/,"$1.$2") // coloca ponto antes dos ultimos digitos
  v=v.replace(/(\d{1})(\d{11})$/,"$1.$2") // coloca ponto antes dos ultimos 11 digitos
  v=v.replace(/(\d{1})(\d{8})$/,"$1.$2") // coloca ponto antes dos ultimos 8 digitos
  v=v.replace(/(\d{1})(\d{5})$/,"$1.$2") // coloca ponto antes dos ultimos 5 digitos
  v=v.replace(/(\d{1})(\d{1,1})$/,"$1,$2") // coloca virgula antes dos ultimos 2 digitos
  z.value = v;
} 
