// 페이지 로드될 때 초기 내용 설정
document.addEventListener("DOMContentLoaded", function(){
	// 현재 상영작 내용을 보이도록 설정
	document.getElementById("currentContent").style.display="block";
});

document.getElementById("current").addEventListener("click", function() {
    showContent("currentContent");
});


document.getElementById("upcoming").addEventListener("click", function() {
    showContent("upcomingContent");
});

document.getElementById("end").addEventListener("click", function() {
    showContent("endContent");
});

function showContent(contentId) {
    // 모든 컨텐츠 숨기기
    var contents = document.getElementsByClassName("content");
    for (var i = 0; i < contents.length; i++) {
        contents[i].style.display = "none";
    }

    // 선택한 컨텐츠 보이기
    document.getElementById(contentId).style.display = "block";
}


