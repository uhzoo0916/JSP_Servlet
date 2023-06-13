/** info.js
 * 
 */
 
 function sendData(){	
	let f = document.frm;
	
	if(f.name.value ===""){	
		window.alert("이름은 필수 사항 입니다.")
		f.name.focus();
		return false;
	}
	
	if(f.name.value.length<1 || f.name.value.length>5){	
		window.alert("제대로된 이름입력 ")
		f.name.focus();
		return false;
	}
	if(f.tel.value ===""){	
		window.alert("연락처는 필수 사항 입니다.")
		f.tel.focus();
		return false;
	}
	
	if(f.address.value ===""){	
		window.alert("주소를 입력하세요.")
		f.address.focus();
		return false;
	}
}