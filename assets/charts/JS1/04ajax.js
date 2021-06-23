function tampilData(posisi)
{

	var namakolom=[];
	var nilai=[];

	var xhttp = new XMLHttpRequest();

	xhttp.onreadystatechange = function()
	{
		if (xhttp.readyState == 4 && xhttp.status == 200)
		{
			var obj =JSON.parse(xhttp.responseText);
			for (var i =0; i<obj.length; i++)
			{
				namakolom.push(obj[i]['nama_brg']);
				nilai.push(obj[i]['stok']);
			}
			var ctx = document.getElementById(posisi),getContext("2d");

			var data =
			{
				labels: namakolom,
				datasets [
				{
					fillColor: "rgba(20,220,220,0.2)",
					strokeColor: "rgbs(220,220,220,1)",
					pointColor: "rgba(220,220,20,1)",
					pointStrokeColor: "#fff",
					pointHighlightFill: "fff",
					pointHighlightStroke: "rgba(220,220,220,1)",
					data: nilai
				}
			]
		};

		var chart = new chart(ctx).Bar(data);

		}	
	};

	xhttp.open("GET", "controller/chart")
	xhttp.send();
}