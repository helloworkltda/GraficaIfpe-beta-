 $(document).ready(function () {
	 
 	$(".ts-sidebar-menu li a").each(function () {
 		if ($(this).next().length > 0) {
 			$(this).addClass("parent");
 		};
 	})
 	var menux = $('.ts-sidebar-menu li a.parent');
 	$('<div class="more"><i class="fa fa-angle-down"></i></div>').insertBefore(menux);
 	$('.more').click(function () {
 		$(this).parent('li').toggleClass('open');
 	});
	$('.parent').click(function (e) {
		e.preventDefault();
 		$(this).parent('li').toggleClass('open');
 	});
 	$('.menu-btn').click(function () {
 		$('nav.ts-sidebar').toggleClass('menu-open');
 	});
	 
	 
	 $('#zctb').DataTable();
	 
	 
	 $("#input-43").fileinput({
		showPreview: false,
		allowedFileExtensions: ["pdf", "odt", "doc", "docx"],
		elErrorContainer: "#errorBlock43"
			// you can configure `msgErrorClass` and `msgInvalidFileExtension` as well
	});

$('#zctb').DataTable();
	 
	 
	 $("#input-44").fileinput({
		showPreview: false,
		allowedFileExtensions: ["pdf", "odt", "doc", "docx"],
		elErrorContainer: "#errorBlock44"
			// you can configure `msgErrorClass` and `msgInvalidFileExtension` as well
	});

$('#zctb').DataTable();
	 
	 
	 $("#input-45").fileinput({
		showPreview: false,
		allowedFileExtensions: ["pdf", "odt", "doc", "docx"],
		elErrorContainer: "#errorBlock45"
			// you can configure `msgErrorClass` and `msgInvalidFileExtension` as well
	});

$('#zctb').DataTable();
	 
	 
	 $("#input-46").fileinput({
		showPreview: false,
		allowedFileExtensions: ["pdf", "odt", "doc", "docx"],
		elErrorContainer: "#errorBlock46"
			// you can configure `msgErrorClass` and `msgInvalidFileExtension` as well
	});


 });
