window.onload = function() {


	var submitbtn = document.getElementById("submit");  				// "submit"이라는 아이디를 가진 엘리먼트를 가져옴 (=선택 버튼)
	var div = document.getElementsByTagName("div")[1];  				// "div" 라는 태그명을 가진 엘리먼트중 2번째 <div> 태그를 가져옴 (= 이름 체크박스가 담긴  div)
	var users = new Array(); 											//모든 <label>태그를 담을 배열 객체 생성
	var choice_result =-999;											// 체크된 이름들 중 선택된 이름의 인덱스 값을 넣을 변수 초기화
	var selected="";                                        			// 체크된 이름이 속한 전체 users 배열에서의 인덱스를 넣은 변수 초기화
	var allcheck = document.getElementById("allcheck");     			// "allcheck"라는 아이디를 가진 엘리먼트를 가져옴 (=전체 선택 체크박스)
		
		
	for (var i = 0; i < div.children.length; i++) { 					//div의 자식 태그인 <label></label>들을 users 배열에 인덱스 값으로  차례대로 저장
			users[i] = div.children[i];                			 		// ex) div.children[0] = div 안의 첫번째 <label> 태그 엘리먼트  
	}	

	allcheck.addEventListener("change", function() {			//전체 선택 체크 박스의 체크값 변화 이벤트 리스너
		if(choice_result != -999){								//발표자 선택했던 인덱스가 존대하면 전체 users 기준의 위치의 엘리먼트의 배경색을 하양색으로 초기화
			users[selected].style.backgroundColor="#ffffff";
			choice_result = -999;
		}
		if (allcheck.checked) {                             	//전체 선택 체크 박스가 체크되어있는 경우
			users.forEach(function(user) {					
				user.children[0].checked = true;				//foreach문을 통해 모든 users의 인덱스값에 해당하는 엘리먼트인 <label>태그 엘리먼트의 첫번째 자식<input type="check">을 체크 상태로 만듬
			});
		} else {												//전체 선택 체크 박스가 체크되어 있지 않은 경우
			users.forEach(function(user) {
				user.children[0].checked = false;				//foreach문을 통해 모든 users의 인덱스값에 해당하는 엘리먼트인 <label>태그 엘리먼트의 첫번째 자식<input type="check">을  체크 해제 상태로 만듬
			});
		}
	}); // ./ allcheck.addEventListener() end
	
	submitbtn.addEventListener("click", function() {							//뽑기 버튼의 클릭 이벤트 리스너
		
		var selectusers = new Array();											//선택된 사람들을 넣을 배열 객체 생성 (여기에 선언한 이유는 버튼을 누를때마다 업데이트된 선택된 사람을 넣기위해)
		
		users.forEach(function(user){ 											//users배열의 forEach문을 통해서
			if(user.children[0].checked){ 										//체크된 사람들을
				selectusers.push(user);   										//selectusers배열에 <label> 태그 엘리먼트로 저장
			}
		});
		
		if(selectusers.length == 0){ 												//아무것도 선택하지않았을 경우
			alert("후보자를 선택해주세요");
		}
		else{
			
		choice_result =  Math.floor( Math.random() * selectusers.length ) ;  		//뽑힌 사람의 선택된 사람들 기준 인덱스
			
		if(selected != ""){															//선택된 사람의 인덱스가 저장되어있는 경우(전체 사람 기준)
			users[selected].style.backgroundColor="#ffffff";						//users 배열의 selected(인덱스)+1번째의 엘리먼트의 배경색을 흰색으로 변경 (선택된 엘리먼트의 배경색을 초기화 시켜주기 위해)
		}
		   
		var count=0;
		var pre_num = -9999;
		
		selecting = setInterval(function(){ 										//인터벌(일정간격으로 작업 수행) 시작, 0.1초 단위로 
		
			 var color_num = Math.floor( Math.random() * selectusers.length );  	// 체크된 사람중 해당 인터벌 타임에 색칠될 엘리먼트의 인덱스 
			
			if(pre_num == -9999){													//이전 인터벌이 실행된 엘리먼트가 없을 경우
				selectusers[color_num].style.backgroundColor = "yellow";			//체크된 사람중의 color_num 인덱스에 해당하는 엘리먼트의 배경색을 노랑으로 초기화
			}
			else{																	//이전 인터벌이 실행된 엘리먼트가 있을 경우
				selectusers[pre_num].style.backgroundColor = "";					//이전 인터벌에 색칠된 엘리먼트의 배경색은 초기화
				selectusers[color_num].style.backgroundColor = "yellow";			//이번 인터벌에 색칠될 엘리먼트의 배경색을 노랑색으로 초기화
			}
			     
			pre_num=color_num;														//이번타임은 다음 타임의 이전타임이므로 pre_num에 값을 대입
			
			if(count == 25){														//count는 실행될때마다 증가하며  만약 count가 25가 될때
				selectusers[color_num].style.backgroundColor = "";					//노랑색이 색칠됬던 엘리먼트의 배경색은 초기화
				clearInterval(selecting);											//인터벌 종료
				selectusers[choice_result].style.backgroundColor = "red";			//뽑기에 선택된 엘리먼트의 배경색을 빨강으로 초기화
				selected = users.indexOf(selectusers[choice_result]);				//selected에는 체크되어있는 엘리먼트의 textContent를 이용하여 포함여부를 확인하여 전체 <label>태그 배열 기준으로 찾은 태그의 인덱스를 구하고 저장
			}
			else{
				count++;	
			}
		}, 100); //./setInterval end
		}
		
	});  //submitbtn.addEventListener() end

}; //window.onload() end...