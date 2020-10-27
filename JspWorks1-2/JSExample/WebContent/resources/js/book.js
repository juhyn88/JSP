function Book(title, author, pages, price){
	this.title = title,		//콤마로 구분
	this.author = author,
	this.pages = pages,
	this.price = price,
	this.info = function(){
		alert(this.title + " 책의 가격은 " + this.price + "원입니다.")
	}
}
		
var jsp = new Book("JSP 웹프로그래밍", "송미영", 620, 27000);
var html = new Book("HTML5+CSS3", "고영희", 550, 25000);
var java = new Book("자바 프로그래밍 입문", "박은종", 600, 25000);
		
var bookList = [jsp, html, java];
		
document.write("<h1>책 제목으로 살펴 보기</h1>")
for(var i=0; i<bookList.length; i++)
	document.write("<p>" + bookList[i].title + "</p>");
