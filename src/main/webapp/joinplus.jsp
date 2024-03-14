<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Cache-Control"
	content="no-cache, no-store, must-revalidate">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="0">
<title></title>
</head>
<body>
<div class="join">
	<div id="chkPop" class="popup">
		<div class="pop-wrap">
			<div class="pop-title">
				<h6></h6>
				<button class="close" type="button"
					onclick="$('#chkPop').removeClass('active');"></button>
		</div>
		<div class="pop-cont"></div>
	</div>
</div>
<div class="con center">
	<ul class="join-title">
		<li>
			<hr>
			<h6>회원가입</h6>
			<br>
			<br>
		</li>
	</ul>
	<div class="tab-container">
		<div class="cont active" id="stage1">
			<div class="join-check02">
				<input type="radio" name="adultYn" id="chk01" value="N"><label
					for="chk01">만 14세 미만입니다.</label> <input type="radio"
					name="adultYn" id="chk02" value="Y"><label for="chk02">만
					14세 이상입니다.</label>
			</div>
			<form id="formTerms">
				<ul class="join-check01">
					<li>약관동의</li>
			<li><input type="checkbox" id="all" name="all"
				onchange="allChanged(this);"><label for="all"><span>모두
						동의</span></label></li>

			<li><input type="checkbox" name="terms06" id="terms06"
				onchange="onTermsChanged(this, true);"> <label
				for="terms06"><span>영화관 통합 서비스(필수)</span></label><a
				href="#" onclick="$('#06').addClass('active');">(상세보기)</a>
			<div id="06" class="popup">
				<div class="pop-wrap">
					<div class="pop-title">
						<h6>영화관 통합 서비스</h6>
						<button class="close" type="button"></button>
					</div>
		<div class="pop-cont">
			<p style="font-size: 14px; font-weight: 500;">제 1조. 목적</p>
			<br> 본 약관은 메가박스중앙(주)(이하 "회사"라 합니다)가 제공하는 온라인, 오프라인
			서비스(이하 "서비스"라 합니다) 이용과 관련하여 회사와 이용자의 권리, 의무 및 책임사항을 규정함을 목적으로
			합니다.<br> <br> <br>
			<p style="font-size: 14px; font-weight: 500;">제 2조. 약관의
				효력 및 변경</p>
			1. 본 약관은 서비스를 이용하고자 본 약관에 동의한 모든 회원에 대하여 그 효력을 발생합니다. 2. 본
			약관의 내용은 회원(서비스)가입 시 게재되거나 공지된 내용에 회원이 동의함으로써 그 효력이 발생합니다. 3.
			회사는 합리적인 사유가 발생될 경우 본 약관을 변경(수정 또는 개정)할 수 있으며, 약관을 개정할 경우 회사는
			시행일 및 개정 사유를 명시하여 현행 약관과 함께 시행일로부터 최소 7일 전, 고객에게 불리하게 변경되거나
			중요한 내용인 경우에는 최소 30일 전에 회사의 웹사이트 또는 전자메일 등을 통해 공지합니다.<br>
			4. 회원은 변경된 약관에 동의하지 않을 경우 회원 탈퇴를 요청할 수 있으며, 변경된 약관의 효력 발생일 이후
			탈퇴 요청을 하지 않을 경우 약관의 변경 사항에 동의한 것으로 간주됩니다.<br> <br>
			<br>
			<p style="font-size: 14px; font-weight: 500;">제 3조. 약관 외
				준칙</p>
			1. 본 약관에 명시되지 아니한 사항에 대해서는 전자상거래 등에서의 소비자보호에 관한 법률, 정보통신망
			이용촉진 및 정보보호 등에 관한 법률 및 기타 관련 법령의 규정에 따릅니다.<br> 2. 본 약관에
			명시되지 않은 서비스에 대한 사항은 당사 홈페이지, 모바일 또는 영화관 현장을 통한 해당 서비스 공지사항에
			따릅니다.<br> <br> <br>
			<p style="font-size: 14px; font-weight: 500;">제 4조. 용어의
				정의</p>
			본 약관에서 사용하는 주요한 용어의 정의는 다음과 같습니다. 1. "사이트" : 회사가 재화·용역·정보를
			회사에게 제공하기 위하여 컴퓨터 등 정보통신 설비를 이용하여 재화·용역을 거래할 수 있도록 설정한 가상의
			영업장 또는 회사가 운영하는 웹사이트(홈페이지, 모바일 웹/어플리케이션, SNS 등)를 말하며, 아울러
			사이트를 운영하는 사업자의 의미로도 사용합니다.<br> 2. "회원" : 본 약관을 인지하고,
			본인인증절차를 거쳐 회사에 개인정보를 제공하여 회원으로서 등록하여 회사 아이디(ID)와 멤버십 카드를 부여
			받은 자로서, 정상적으로 메가박스 서비스를 이용할 수 있는 권한을 부여 받은 고객을 말합니다.<br>
			3. "아이디" : 회원의 식별과 회원의 서비스 이용을 위하여 회원이 선정하고 회사가 승인하는 문자나 숫자
			혹은 그 조합을 말합니다(이하"ID"라 합니다).<br> 4. "비밀번호" : 회원이 부여 받은
			ID와 일치된 회원임을 확인하고, 회원 자신의 비밀을 보호하기 위하여 회원이 정한 문자와 숫자의 조합을
			말합니다.<br> 5. "서비스" : 회사가 회원을 위하여 유료 또는 무료로 제공하는 행위 또는 그
			행위 대상인 유, 무형의 물건 자체를 의미하며 온/오프라인에서 이루어지는 영화 관람, 포인트 적립, 사용,
			할인, 이벤트 참여 등의 전반적인 고객 서비스 프로그램을 말합니다.<br> 6. "멤버십 포인트" :
			회사에서 재화/서비스 구매 시 적립/사용이 가능하도록 제공하는 포인트를 말합니다. 7. "이용중지" : 회사가
			약관에 의거하여 회원의 서비스 이용을 제한하는 것을 말합니다. 8. "해지" : 회사 또는 회원이 서비스 사용
			후 이용계약을 해약하는 것을 말합니다.<br> <br> <br>
			<p style="font-size: 14px; font-weight: 500;">제 5조. 회원 가입
				및 카드 발급</p>
			1. 회원 가입은 회사가 운영하는 사이트를 통해 가능하며, 서비스 가입 신청 시 본 약관과 개인정보
			처리방침(‘개인정보수집 및 이용안내’ 및 ‘마케팅 활용 동의’ 등)에 동의함으로써 회원 가입을 신청합니다. <br>
			2. 고객으로부터 회원 가입 신청이 있는 경우 회사는 자체 기준에 따른 심사를 거친 후 고객에게 회원 자격을
			부여 할 수 있으며 회원 자격이 부여된 고객은 회사로부터 가입 완료 공지를 받은 시점부터 회원으로서의 지위를
			취득하고 멤버십 카드를 즉시 발급받을 수 있습니다.<br> 3. 관계 법령에 따라 만14세 미만의
			아동은 온라인으로 타인에게 개인정보를 보내기 전에 반드시 개인정보의 수집 및 이용목적에 대하여 충분히 숙지하고
			법정대리인(부모)의 동의를 받아야 합니다.<br> <br> <br>
			<p style="font-size: 14px; font-weight: 500;">제 6조. 멤버십
				카드의 이용 및 관리</p>
			1. 회원이 서비스를 이용하고자 할 경우에는 멤버십 카드를 제시하여야 합니다. 카드를 제시할 경우 회사는
			회원에게 본인 확인을 위한 식별 절차를 요청할 수 있습니다. 이 경우 회원은 회사의 요청을 준수하여야 정상적인
			서비스를 제공받을 수 있습니다. 2. 멤버십 카드는 회원 본인이 직접 사용하여야 하며, 카드를 제3자에게
			임의적으로 대여 사용하게 하거나 양도 또는 담보의 목적으로 사용 할 수 없습니다. 3. 전항의 규정에도
			불구하고, 회원이 당사의 사전 동의 없이 멤버십 카드를 타인에게 대여하거나, 그 사용을 위임하거나, 양도 또는
			담보의 목적으로 제공함으로써 발생한 손해와 타인이 멤버십 카드를 사용할 수 있음을 알았거나 쉽게 알 수
			있었음에도 불구하고 멤버십 카드를 방치함으로써 발생한 손해에 대하여는 회사는 어떠한 책임도 지지 않습니다. <br>
			<br>
			<p style="font-size: 14px; font-weight: 500;">제 7조. 회원 탈퇴
				및 자격 상실</p>
			1. 회원이 이용 계약을 해지(탈퇴) 하고자 하는 경우에는 회원 본인이 사이트나 메가박스 고객센터 또는
			E-MAIL등 기타 회사가 정하는 방법으로 회원탈퇴 또는 이용약관 철회를 요청할 수 있으며, 회사는 회원의
			요청에 따라 조속히 회원 탈퇴에 필요한 제반 절차를 수행합니다. 단, 회원 탈퇴 시 이벤트 부정 이용 방지
			등을 위하여 탈퇴일로부터 30일 이내에 재가입이 불가하며 회원 탈퇴 시 적립된 메가박스 멤버십 포인트 및 쿠폰
			등은 모두 삭제됩니다.<br> 2. 회원이 다음 각 호에 해당하는 경우, 회사는 당해 회원에 대한
			통보로써 회원 자격을 상실시킬 수 있습니다. 단, 4)호의 경우에는 회원에 대한 통보 없이 자격이 상실됩니다.
			1) 회원 가입 신청 시, 허위 내용을 등록하거나 타인의 명의를 도용한 경우<br> 2) 가입한
			이름이 실명이 아닌 경우<br> 3) 회원이 부정 적립, 부정 사용 등 멤버십 포인트 및 카드를
			부정한 방법 또는 목적으로 이용한 경우<br> - 부정 적립 : 회원이 실제로 상품이나 서비스를
			구매하지 않았음에도 불구하고 당해 회원에게 포인트가 적립된 경우를 말합니다. 그러나 시스템의 오류 등 회원의
			귀책사유에 의하지 않고 포인트가 적립된 경우나 상품이나 서비스를 실제로 구매한 당사자의 동의가 있어 구매
			당사자 대신 다른 회원에게 포인트를 적립하는 경우는 이에 제외됩니다. 부정 적립된 포인트는 회원 자격 상실
			통보와 함께 동시 소멸하고 이에 대하여 회원은 어떠한 권리도 주장할 수 없습니다. 또한 부정 적립 포인트로
			상품이나 서비스를 구매하는 등의 부당이득이 발생한 경우 회원 당사자 또는 부정 적립 동조자가 당사에 대한
			민·형사상 책임을 집니다.<br> - 부정 사용 : 당사나 회원의 동의 없이 타 회원의 포인트를
			수단과 방법에 관계 없이 임의로 사용한 경우를 말합니다.<br> 4) 회원이 사망한 경우<br>
			5) 타인의 명예를 손상시키거나 불이익을 주는 행위를 한 경우<br> 6) 회사, 다른 회원 또는 제
			3자의 지적재산권을 침해하는 경우<br> 7) 공공질서 및 미풍양속에 저해되는 내용을 고의로 유포시킨
			경우<br> 8) 서비스 운영을 고의로 방해한 경우<br> 9) 회사의 서비스를 이용하여
			얻은 정보를 회사의 사전 승낙 없이 복제 또는 유통시키거나 상업적으로 이용하는 경우<br> 10)
			회원이 자신의 홈페이지와 게시판에 음란물을 게재하거나 음란 사이트 링크하는 경우<br> 11) 본
			약관을 포함하여 기타 회사가 정한 이용 조건에 위반한 경우<br> 12) 당사 및 제휴사의 합리적인
			판단에 기하여 메가박스 서비스 제공을 거부할 필요가 있다고 인정할 경우<br> 3. 본 조 제 2
			항에 의해 회원 자격이 상실된 회원은 회사로부터 해당 사유 발생에 대한 통지를 받은 날로부터 최대 30일
			이내에 본인의 의견을 소명할 수 있으며, 당사는 회원의 소명 내용을 심사하여 회원의 주장이 타당하다고 판단하는
			경우 회원으로 하여금 계속하여 정상적인 서비스를 이용할 수 있도록 합니다.<br> 4. 본 조 제
			1항에 의한 회원 탈퇴 또는 제 2항에 의한 회원 자격상실이 확정되는 시점은 아래와 같습니다.<br>
			1) 회원 탈퇴 요청일 또는 회원 자격상실 통보일에 회원 탈퇴 또는 자격상실이 확정됩니다.<br>
			2) 사망으로 인한 자격상실의 경우에는 회원 사망일에 자격상실이 확정됩니다. 당해 회원에게 제공된 기 메가박스
			멤버십 서비스와 관련된 권리나 의무 및 포인트는 당해 회원의 상속인에게 상속되지 않습니다.<br> <br>
			<br>
			<p style="font-size: 14px; font-weight: 500;">제 8 조. 회원에
				대한 통지</p>
			1. 당사가 회원에 대한 통지를 하는 경우, 회원이 당사와 미리 약정하여 지정한 E-MAIL 주소, SMS,
			PUSH메세지 등으로 할 수 있습니다.<br> 2. 회사는 보다 나은 서비스 혜택 제공을 위해 다양한
			전달 방법(안내문, E-MAIL, SMS 등)을 통해 서비스 관련 정보를 제공할 수 있습니다. 단, 회사는
			회원이 서비스 혜택 정보 제공을 원치 않는다는 의사를 밝히는 경우 정보 제공 대상에서 해당 회원을 제외하여야
			하며, 대상에서 제외되어 서비스 정보를 제공 받지 못해 불이익이 발생하더라도 이에 대해서는 회사가 책임지지
			않습니다<br> 3. 당사는 불특정다수 회원에 대한 통지의 경우 1주일 이상 사이트 공지사항에
			게시함으로써 개별 통지에 갈음할 수 있습니다.<br> <br> <br>
			<p style="font-size: 14px; font-weight: 500;">제 9조. 회원
				정보의 변경</p>
			1. 회원은 개인정보 처리방침를 통해 언제든지 본인의 개인정보를 열람하고 수정할 수 있습니다.<br>
			2. 회원은 이용 신청 시 기재한 사항이 변경되었을 경우 온라인으로 직접 수정을 하거나,
			m.dreamcenter@partner.megabox.co.kr 또는 1544-0070로 연락하시어 수정
			요청을 해야 하며, 회원정보를 변경하지 아니하여 발생되는 문제의 책임은 회원에게 있습니다.<br> <br>
			<br>
			<p style="font-size: 14px; font-weight: 500;">제 10조. 회사의
				의무</p>
			1. 회사는 특별한 사정이 없는 한 회원이 서비스 이용을 신청한 날에 서비스를 이용할 수 있도록 합니다.<br>
			2. 회사는 본 약관에서 정한 바에 따라 계속적이고 안정적인 서비스의 제공을 지속적으로 노력하며, 설비에
			장애가 생기거나 멸실 된 때에는 지체 없이 이를 수리 복구하여야 합니다. 다만, 천재지변, 비상사태 또는 그
			밖에 부득이한 경우에는 그 서비스를 일시 중단하거나 중지할 수 있습니다.<br> 3. 회사는
			회원으로부터 소정의 절차에 의해 제기되는 의견이나 불만이 정당하다고 인정할 경우에는 적절한 절차를 거처
			처리하여야 합니다. 처리 시 일정 기간이 소요될 경우 회원에게 그 사유와 처리 일정을 알려주어야 합니다.<br>
			4. 회사는 회원의 개인정보 수집 및 이용에 관련 하여 ‘개인정보처리방침’을 준수합니다.<br> 5.
			회사는 본 약관의 체결, 계약사항의 변경 및 해지 등 이용고객과의 계약 관련 절차 및 내용 등에 있어
			이용고객에게 편의를 제공하도록 노력합니다.<br> <br> <br>
			<p style="font-size: 14px; font-weight: 500;">제 11조. 회원의
				의무</p>
			1. 회원은 이 약관에서 규정하는 사항과 이용안내 또는 공지사항 등을 통하여 회사가 공지하는 사항을 준수하여야
			하며, 기타 회사의 업무에 방해되는 행위를 하여서는 안됩니다.<br> 2. 회원의 ID와 비밀번호에
			관한 모든 관리책임은 회원에게 있습니다. 회원에게 부여된 ID와 비밀번호의 관리 소홀, 부정 사용에 의하여
			발생하는 모든 결과에 대한 책임은 회원에게 있습니다.<br> 3. 회원은 자신의 ID나 비밀번호가
			부정하게 사용되었다는 사실을 발견한 경우에는 즉시 회사에 신고하여야 하며, 신고를 하지 않아 발생하는 모든
			결과에 대한 책임은 회원에게 있습니다.<br> 4. 회원은 회사의 사전승낙 없이는 서비스를 이용하여
			영업활동을 할 수 없으며, 그 영업활동의 결과와 회원이 약관에 위반한 영업활동을 하여 발생한 결과에 대하여
			회사는 책임을 지지 않습니다. 회원은 이와 같은 영업활동으로 회사가 손해를 입은 경우 회원은 회사에 대하여
			손해배상의무를 집니다.<br> 5. 회원은 회사의 명시적인 동의가 없는 한 서비스의 이용권한, 기타
			이용 계약상 지위를 타인에게 양도, 증여할 수 없으며, 이를 담보로 제공할 수 없습니다.<br> 6.
			회원은 서비스 이용과 관련하여 다음 각 호에 해당되는 행위를 하여서는 안됩니다.<br> 1) 다른
			회원의 ID와 비밀번호 등을 도용하는 행위<br> 2) 본 서비스를 통하여 얻은 정보를 회사의
			사전승낙 없이 회원의 이용 이외 목적으로 복제하거나 이를 출판 및 방송 등에 사용하거나 제3자에게 제공하는
			행위<br> 3) 기타 제3자의 저작권 등 지적재산권에 대한 침해하거나 제3자의 명예 손상 및 업무를
			방해하는 행위<br> 4) 공공질서 및 미풍양속에 위반되는 외설 또는 폭력적인 메시지, 화상, 음성,
			기타 공서 양속에 반하는 정보를 홈페이지에 공개 또는 게시하는 행위<br> 5) 모욕적이거나
			위협적이어서 타인의 프라이버시를 침해할 수 있는 내용을 전송, 게시, 전자메일 또는 기타의 방법으로 타인에게
			유포하는 행위<br> 6) 회사의 홈페이지, 어플리케이션, 극장 및 회사가 지정한 위탁 판매업자를
			통하는 방법 외의 방법으로 티켓 또는 상품을 구매하는 행위<br> 7) 회사의 명시적인 허가없이
			프로그램 등을 이용하여 회사의 웹(Web)/어플리케이션(App) 서버에 접근하거나 티켓을 구매하는 등 회사의
			정상적인 영업 활동을 방해하는 행위 일체<br> 8) 반복적으로 다량 예매 후 취소하는 등 다른
			회원들의 정상적인 티켓 구매를 방해하는 행위<br> 9) 회사의 정책에 반하여 구매가격 이상의 웃돈을
			받고 재판매할 목적 또는 허위 구매 실적 만을 위하여 티켓을 구매하는 등 회사의 동의 없이 영리 또는 부정한
			목적으로 서비스를 사용하는 행위<br> 10) 범죄와 결부된다고 객관적으로 판단되는 행위<br>
			11) 회사의 승인을 받지 않고 다른 사용자의 개인정보를 수집 또는 저장하는 행위<br> 12)
			메가박스 임직원, 메가박스 협력회사의 임직원에 대한 폭언, 폭행 그 밖의 통상적인 범위를 현저히 벗어나는 비
			인격적 언행표출 및 위력과시 등 공포감 유발 행위<br> 13) 기타 관계법령에 위배되는 행위<br>
			7. 회원이 본 약관 및 공지사항 등을 통해 안내한 금지행위를 한 경우, 회사는 해당 회원의 예매/구매 내역을
			임의로 취소처리 할 수 있으며, 해당 회원에 대하여 예매 제한 등 서비스의 일부 또는 전부를 정지하거나, 회원
			자격을 상실 시킬 수 있습니다. 이에 따라 발생하는 손해에 대한 책임은 회원이 부담합니다.<br> <br>
			<br>
			<p style="font-size: 14px; font-weight: 500;">제 12조. 회원
				서비스 혜택</p>
			1. 회원 가입을 통해 멤버십 카드를 발급 받은 회원은 회사의 상품을 구입하거나 서비스를 이용하고 본 약관 내
			고지된 바에 따라 멤버십 포인트를 회원 본인의 계정에 적립할 수 있습니다. 멤버십 포인트 적립 및 사용,
			소멸에 관한 상세 내용은 ‘제 13조. 포인트 안내’ 에 상세 기술합니다.<br> 2. 회원은 회사의
			홈페이지, 어플리케이션 등 온라인을 통하여 티켓을 예매할 수 있습니다. 단, 무분별한 서비스 이용 방지를
			위하여 티켓 예매/구매 내역이 회사가 정한 기준을 초과하는 경우 온라인 예매가 제한될 수 있습니다. 티켓 예매
			제한 사항은 회사의 홈페이지에 공지된 기준을 따르며, 회사의 내부 방침에 따라 사전 고지 후 변경될 수
			있습니다.<br> 3. 회원은 회사 홈페이지, ARS, 키오스크 및 모바일 앱 등을 이용하여 영화
			티켓을 포함한 메가박스에서 제공하는 서비스를 이용할 수 있으며 E-MAIL 또는 SMS, 카카오 알림톡,
			모바일 앱 푸쉬(APP PUSH)를 통한 영화 및 극장, 구매 정보를 제공받습니다.<br> 4.
			회원은 구매 또는 서비스 이용 실적에 따라 VIP 회원으로 선정될 수 있습니다. VIP 회원 선정 기준 및
			시기, VIP 자격 기간과 혜택은 별도의 회사 공지에 따릅니다.<br> 5. 회원은 맞춤서비스를 위해
			본인의 동의 과정을 통해 스페셜 멤버십에 가입할 수 있습니다.<br> 6. 스페셜 멤버십은 기본적인
			혜택은 동일하나, 별도의 공지를 통해 추가된 서비스를 제공받을 수 있습니다. 스페셜 멤버십 혜택은 회사의
			정책에 의거 공지를 통해 변경될 수 있습니다.<br> 7. 회사는 가능한 한 회원에게 회사에서
			계획하는 모든 행사에 참여할 수 있는 우선권을 부여토록 합니다.<br>
		</div>
		</div>
	</div></li>
<li><input type="checkbox" name="terms05" id="terms05"
	onchange="onTermsChanged(this, true);"> <label
	for="terms05"><span>개인정보 수집 및 이용 동의(필수)</span></label><a
	href="#" onclick="$('#05').addClass('active');">(상세보기)</a>


	<div id="05" class="popup">
		<div class="pop-wrap">
			<div class="pop-title">
				<h6>개인정보 수집 및 이용 동의</h6>
				<button class="close" type="button"
					onclick="$('#05').removeClass('active');"></button>
			</div>
	<div class="pop-cont">
		<p style="font-size: 16px; font-weight: 500;">개인정보 수집 및
			이용 동의</p>
		<br> '커피24 북카페' (이하 '회사')는 회원의 개인정보를 중요시하며, 「개인정보보호법」등
		회사가 준수하여야 할 관련 법령상의 개인정보보호 규정을 준수하고 있습니다. 회사는 개인정보처리방침을 통하여
		회원님께서 제공하시는 개인 정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보보호를 위해 어떠한 조치가
		취해지고 있는지 알려드립니다. 회사는 개인정보처리방침을 개정하는 경우 모바일앱 공지사항(또는 개별공지)을
		통하여 사전 공지할 것입니다. <br> <br>
		<p style="font-weight: 500;">1. 개인정보의 수집 및 이용목적</p>
		회사는 수집한 개인정보를 다음의 목적을 위해 활용합니다.<br> - 서비스 제공에 관한 계약 이행 및
		서비스 제공에 따른 콘텐츠 제공, 결제, 환불, 구매 상품 배송, 본인인증, 연령확인, 만 14세 미만 아동의
		개인정보 수집 시 법정 대리인 동의여부 및 본인 확인, 고객상담 등 민원처리<br> - 포인트 적립
		및 사용 서비스 제공<br> - 홍보성 정보 전달, 인구통계학적 특성에 따른 서비스 제공 및 광고
		게재, 접속 빈도 파악 또는 회원의 서비스 이용에 대한 통계 분석<br> <br>
		<p style="font-weight: 500;">2. 개인정보의 수집 및 이용항목</p>
		회사는 회원가입, 상담, 서비스 제공 등을 위해 아래와 같은 개인정보를 수집하고 있습니다.<br>

		<table cellpadding="0" cellspacing="0"
			style="width: 100%; border-top: 1px solid #eee;">
	<tr>
				<th
					style="border-right: 1px solid #eee; padding: 10px; border-bottom: 1px solid #eee; font-weight: 500">구분</th>
				<th
					style="border-right: 1px solid #eee; padding: 10px; border-bottom: 1px solid #eee; font-weight: 500">수집방법</th>
				<th colspan="2"
					style="border-right: 1px solid #eee; padding: 10px; border-bottom: 1px solid #eee; font-weight: 500">수집항목</th>
			</tr>
			<tr>
				<td rowspan="4"
					style="border-right: 1px solid #eee; padding: 10px; border-bottom: 1px solid #eee;">회원가입</td>
				<td rowspan="2"
					style="border-right: 1px solid #eee; padding: 10px; border-bottom: 1px solid #eee;">회원등록
					시</td>
				<td
					style="border-right: 1px solid #eee; padding: 10px; border-bottom: 1px solid #eee;">필수</td>
				<td
					style="border-right: 1px solid #eee; padding: 10px; border-bottom: 1px solid #eee;">ID,
					PW, 이름, 생년월일, 성별, 전화번호, 이메일, 선호 구단, 본인인증정보</td>
			</tr>
			<tr>
				<td
					style="border-right: 1px solid #eee; padding: 10px; border-bottom: 1px solid #eee;">선택</td>
				<td
					style="border-right: 1px solid #eee; padding: 10px; border-bottom: 1px solid #eee;">주소</td>
			</tr>
			<tr>
				<td
					style="border-right: 1px solid #eee; padding: 10px; border-bottom: 1px solid #eee;">법정
					대리인 본인인증 시</td>
				<td
					style="border-right: 1px solid #eee; padding: 10px; border-bottom: 1px solid #eee;">필수</td>
				<td
					style="border-right: 1px solid #eee; padding: 10px; border-bottom: 1px solid #eee;">(14세
					미만 회원의 경우)<br> 법정대리인 인증 정보: 성명, 생년월일, 성별, 내외국인 정보,
					휴대폰 번호, 동일인식별정보(CI), 중복가입확인정보(DI)
				</td>
			</tr>
			<tr>
				<td
					style="border-right: 1px solid #eee; padding: 10px; border-bottom: 1px solid #eee;">본인
					인증 시</td>
				<td
					style="border-right: 1px solid #eee; padding: 10px; border-bottom: 1px solid #eee;">필수</td>
				<td
					style="border-right: 1px solid #eee; padding: 10px; border-bottom: 1px solid #eee;">(14세
					이상 회원의 경우) <br> 본인인증 정보: 성명, 생년월일, 성별, 내외국인 정보, 휴대폰
					번호, 동일인식별정보(CI), 중복가입확인정보(DI)
				</td>
			</tr>
			<tr>
				<td
					style="border-right: 1px solid #eee; padding: 10px; border-bottom: 1px solid #eee;">환불</td>
				<td
					style="border-right: 1px solid #eee; padding: 10px; border-bottom: 1px solid #eee;">환불
					시</td>
				<td
					style="border-right: 1px solid #eee; padding: 10px; border-bottom: 1px solid #eee;">필수</td>
				<td
					style="border-right: 1px solid #eee; padding: 10px; border-bottom: 1px solid #eee;">은행명,
					예금주명, 환불계좌번호</td>
			</tr>
			<tr>
				<td rowspan="2"
					style="border-right: 1px solid #eee; padding: 10px; border-bottom: 1px solid #eee;">배송지
					추가</td>
				<td rowspan="2"
					style="border-right: 1px solid #eee; padding: 10px; border-bottom: 1px solid #eee;">마이페이지
					입력, 상품 구매 시</td>
				<td
					style="border-right: 1px solid #eee; padding: 10px; border-bottom: 1px solid #eee;">필수</td>
				<td
					style="border-right: 1px solid #eee; padding: 10px; border-bottom: 1px solid #eee;">수신자명,
					수신자 연락처, 배송지 주소</td>
			</tr>
			<tr>
				<td
					style="border-right: 1px solid #eee; padding: 10px; border-bottom: 1px solid #eee;">선택</td>
				<td
					style="border-right: 1px solid #eee; padding: 10px; border-bottom: 1px solid #eee;">배송지명,
					추가 연락처, 배송 메모</td>
			</tr>
			<tr>
				<td rowspan="4"
					style="border-right: 1px solid #eee; padding: 10px; border-bottom: 1px solid #eee;">구매</td>
				<td rowspan="2"
					style="border-right: 1px solid #eee; padding: 10px; border-bottom: 1px solid #eee;">상품
					구매 시</td>
				<td
					style="border-right: 1px solid #eee; padding: 10px; border-bottom: 1px solid #eee;">필수</td>
				<td
					style="border-right: 1px solid #eee; padding: 10px; border-bottom: 1px solid #eee;">수신자명,
					수신자 연락처, 배송지 주소</td>
			</tr>
			<tr>
				<td
					style="border-right: 1px solid #eee; padding: 10px; border-bottom: 1px solid #eee;">선택</td>
				<td
					style="border-right: 1px solid #eee; padding: 10px; border-bottom: 1px solid #eee;">배송지명,
					추가 연락처, 배송 메모</td>
			</tr>
			<tr>
				<td
					style="border-right: 1px solid #eee; padding: 10px; border-bottom: 1px solid #eee;">선택</td>
				<td
					style="border-right: 1px solid #eee; padding: 10px; border-bottom: 1px solid #eee;">이메일</td>
			</tr>
			<tr>
				<td
					style="border-right: 1px solid #eee; padding: 10px; border-bottom: 1px solid #eee;">홈페이지
					이용</td>
				<td
					style="border-right: 1px solid #eee; padding: 10px; border-bottom: 1px solid #eee;">자동생성</td>
				<td
					style="border-right: 1px solid #eee; padding: 10px; border-bottom: 1px solid #eee;">-</td>
				<td
					style="border-right: 1px solid #eee; padding: 10px; border-bottom: 1px solid #eee;">멤버십
					서비스 이용기록, 티켓 내역, 상품 내역, 포인트 내역, 쿠폰 내역, 쿠키 정보</td>
			</tr>
			<tr>
				<td
					style="border-right: 1px solid #eee; padding: 10px; border-bottom: 1px solid #eee;">상담</td>
				<td
					style="border-right: 1px solid #eee; padding: 10px; border-bottom: 1px solid #eee;">상담
					진행 시</td>
				<td
					style="border-right: 1px solid #eee; padding: 10px; border-bottom: 1px solid #eee;">-</td>
				<td
					style="border-right: 1px solid #eee; padding: 10px; border-bottom: 1px solid #eee;">이용자
					상담을 통해 생성되는 문의/상담 정보</td>
			</tr>
		</table>

		<br>
		<p style="font-weight: 500;">3. 개인정보의 보유 및 이용기간</p>
		<p
			style="font-size: 16px; font-weight: 500; line-height: 2em;">
			이용자의 개인정보는 수집 목적 달성 시 즉시 파기합니다. <br> (단, 회사는 이용자의 탈퇴 요청
			시 즉시 탈퇴 처리하며, 계정도용 방지를 위해 탈퇴 후 15일간 개인정보를 보유합니다.) 또한 관계 법령에
			의해 일정 기간 동안 회원정보를 보유합니다. 법령상 의무이행을 위한 기간은 아래와 같습니다.<br>
			- 표시/광고에 관한 기록 : 6개월 (전자상거래 등에서의 소비자보호에 관한 법률)<br> - 계약
			또는 청약철회 등에 관한 기록 : 5년 (전자상거래 등에서의 소비자보호에 관한 법률)<br> -
			대금결제 및 재화 등의 공급에 관한 기록 : 5년 (전자상거래 등에서의 소비자보호에 관한 법률)<br>
			- 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년 (전자상거래 등에서의 소비자보호에 관한 법률)<br>
			- 웹사이트 방문에 관한 기록 : 3개월 (통신비밀보호법)
		</p>
		<br> 고객님께서는 이와 같은 개인정보 수집 및 이용에 동의하지 않으실 수 있습니다. 단, 동의
		거부 시 회원가입이 제한됩니다.
	</div>
		</div>
	</div></li>

<li><input type="checkbox" name="terms07" id="terms07"
	onchange="onTermsChanged(this, false);"> <label
	for="terms07"><span>마케팅 정보 활용 동의(선택)</span></label><a href="#"
	onclick="$('#07').addClass('active');">(상세보기)</a>

	<ul>
		<li><input type="checkbox" id="adsSms" name="adsSms"
			onchange="marketingChanged(this, 'adsSms');"><label
			for="adsSms"><span>SMS</span></label></li>
		<li><input type="checkbox" id="adsKakao" name="adsKakao"
			onchange="marketingChanged(this, 'adsKakao');"><label
			for="adsKakao"><span>카카오톡 알림톡</span></label></li>
		<li><input type="checkbox" id="adsEmail" name="adsEmail"
			onchange="marketingChanged(this, 'adsEmail');"><label
			for="adsEmail"><span>E-mail</span></label></li>
	</ul>


	<div id="07" class="popup">
		<div class="pop-wrap">
			<div class="pop-title">
				<h6>마케팅 정보 활용 동의</h6>
				<button class="close" type="button"
					onclick="$('#07').removeClass('active');"></button>
			</div>
			<div class="pop-cont">
				<p style="font-size: 16px; font-weight: 500;">마케팅 정보 활용
					동의</p>
				<br> · SMS 수신 동의(선택) <br> · 카카오 알림톡 수신 동의(선택) <br>
				· e-mail 수신 동의(선택) <br> <br> 커피24 북카페는 마케팅 정보 안내를
				위한 광고성 정보 수신에 동의하신 분을 대상으로 서비스에 대한 새로운 소식이나 이벤트 정보를 전달하고자
				합니다. 귀하는 ㈜엔씨다이노스가 발송하는 광고성 정보를 수신할 수 있으며, 광고성 정보에 기재되어 있는
				수신거부 안내방법에 따라 수신을 거부하실 수 있습니다.
			</div>
		</div>
	</div></li>
			</ul>
		</form>
		<button class="join-gor" type="button" onclick="certPhone()">본인인증</button>

		<div class="popup" id="under14Popup">
			<div class="pop-wrap">
				<div class="pop-title">
					<h6>보호자(법정대리인) 개인정보 수집 및 이용 동의</h6>
					<button class="close" type="button"
						onclick="$('#under14Popup').removeClass('active');"></button>
				</div>
				<div class="pop-cont join-pop">
					<p>
						1 . 개인정보 수집 및 이용 목적 : 만 14세 미만 아동의 개인정보 수집에 대한 법정대리인 동의 확인<br>
						2. 개인정보 수집 및 이용 항목 : 법정 대리인 본인인증 정보(성명, 생년월일, 성별, 내외국인 정보, 휴대전화
						번호, 동일인식별정보(CI), 중복가입확인정보(DI)<br> <span class="font700">3.
							개인정보 보유 및 이용 기간 : 회원 탈퇴 시 파기</span><br> 4. 귀하는 개인정보 수집 및 이용에
						동의하지 않으실 수 있으며, 동의 거부시에는 만 14세 미만 아동의 회원가입이 이뤄질 수 없습니다.
					</p>
					<div class="join-check03">
						<input type="checkbox" id="adultAgree"><label
							for="adultAgree"><span>개인정보 수집 및 이용동의(필수)</span></label>
					</div>
				</div>
				<div class="pop-btn">
					<button class="gray"
						onclick="$('#under14Popup').removeClass('active');">취소</button>
					<button type="button" onclick="certPhoneChild();">확인</button>
				</div>
			</div>
		</div>
	</div>
	<div class="cont" id="stage2">
		<form id="form">
			<div>
	</div>
			<ul class="join-wrap">
				<li>아이디</li>
				<li><input class="id-input" id="username" name="userid"
					type="text" onchange="resetCheckId();"
					placeholder="아이디를 입력해 주세요." />
					<button type="button" onclick="checkId();">중복확인</button>
					<hr></li>
				<li>비밀번호 <label>(영문 대/소문자, 특수문자를 포함 10-20자로 입력해주세요.)</label>-<label>사용가능
						특수문자 : !@#$%^&* </label></li>
				<li><input name="password" type="password"
					placeholder="비밀번호를 입력해 주세요." /></li>
				<li>비밀번호 확인</li>
				<li><input name="password2" type="password"
					placeholder="비밀번호를 다시 한번 입력해 주세요." /></li>
				<li>이름</li>
				<li><input id="name" name="name" type="text"
					placeholder="이름" /></li>
				<li>생일</li>
				<li id="birthChk"><input id="birth" name="birth" type="text"
					placeholder="생일" /></li>
				<li>성별</li>
				<li><input type="radio" id="male" name="gender" value="MALE">
					<label for="male">남자</label> <input type="radio" id="female"
					name="gender" value="FEMALE"> <label for="female">여자</label>
				</li>
			</ul>
			<button type="button" class="join-btn" onclick="join()">회원가입</button>
		</form>
	</div>
	<hr>
	<div>
		🤩 <a href="login">계정이 있으시면 로그인 하세요.</a>
	</div>
			</div>
		</div>
	</div>
</body>
</html>