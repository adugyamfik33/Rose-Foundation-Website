// document.getElementsByClassName("btn-pay").disable =true;

function momoAction(){
  
   document.getElementById('bank-accounts').innerHTML ='';
    var count =Number(document.getElementById("display").textContent);
    var mform;
    count++;
    if(count%2==1){
      mform = `<table class="table table-dark" style="margin-top:10px;">
      <tbody>
        <tr class="">
          <td colspan="2" class="table-active">MTN</td>
          <td>0240000000</td>
        </tr>
        <tr>
          <td colspan="2" class="table-active">Vodafone</td>
          <td>0500000000</td>
        </tr>
        <tr>
          
          <td colspan="2" class="table-active">AirtelTigo</td>
          <td>0570000000</td>
        </tr>
      </tbody>
    </table>`;
document.getElementById('momo-form-numbers').innerHTML = mform;
    }
    else{
      document.getElementById('momo-form-numbers').innerHTML ='';
    }
    document.getElementById('display').innerHTML = `${count}`;
     document.getElementById("display1").innerHTML="0";
}
function bankAction(){
   document.getElementById('momo-form-numbers').innerHTML ='';
  var counter =Number(document.getElementById("display1").textContent);
  var bform;
  counter++;
  if(counter%2==1){
    bform = `<table class="table table-dark" style="margin-top:10px;">
    <tbody>
      <tr class="">
        <td colspan="2" class="table-active">Ecobank</td>
        <td>0240000000</td>
      </tr>
      <tr>
        <td colspan="2" class="table-active">Absa Bank</td>
        <td>0500000000</td>
      </tr>
      <tr>
        
        <td colspan="2" class="table-active">GT Bank</td>
        <td>0570000000</td>
      </tr>
    </tbody>
  </table>`;
document.getElementById('bank-accounts').innerHTML = bform;
  }
  else{
    document.getElementById('bank-accounts').innerHTML ='';
  }
  document.getElementById('display1').innerHTML = `${counter}`;
   document.getElementById("display").innerHTML="0";
}

