document.writeln("<c:forEach items=\'${searchresult }\' var=\'rst\'>");
document.writeln("	<div class=\'col-lg-3 col-sm-6 price-info mb-4\'>");
document.writeln("		<div class=\'prices p-4\'>");
document.writeln("			<div class=\'prices-bottom text-center\'>");
document.writeln("				<img alt=\'一张图片\' style=\'max-width: 200px; max-height: 160px;\'");
document.writeln("					src=\'/beauty/images/portfolio/folio-2.jpeg\' />");
document.writeln("				<div class=\'my-2\'>");
document.writeln("					<h4>${rst.title }</h4>");
document.writeln("				</div>");
document.writeln("				<p>${ fn:substring(rst.content, 0, 50) } ...</p>");
document.writeln("");
document.writeln("			</div>");
document.writeln("		</div>");
document.writeln("	</div>");
document.writeln("");
document.writeln("</c:forEach>");