    // idが"search_studentInfo"のbuttonをclick時イベント
    window.addEventListener("load",function(){
        document.getElementById("search_studentInfo").addEventListener("click",function(){
            var formDatas = document.getElementById("studentInfo");
            var postDatas = new FormData(formDatas);

            var XHR = new XMLHttpRequest();

            // 生徒の検索(DB接続)を行うphpファイルを呼び出す
            XHR.open("POST","./php/db/course.php",true);

            XHR.send(postDatas);

            XHR.onreadystatechange = function(){
        	   if(XHR.readyState == 4 && XHR.status == 200){
                    // jqGrid表示用のデータ配列を用意
                    let studentData =[];
                    // フィールドの列数を設定
                    let fieldCount = 2;

        	        // 検索結果のデータをJson形式から配列に変換
                    let studentDate = JSON.parse(XHR.responseText);


                    // dbから取得したデータを格納していく
                    for (let i=0,l=studentDate.length; i<l; i++) {
                        studentData.push({m_subject_id:studentDate[i],m_subject_name:studentDate[i+1],m_course_id:studentDate[i+2],m_course_name:studentDate[i+3],m_course_takingmodelname:studentDate[i+4],m_course_studyyears:studentDate[i+5]});
                        i+=5;//次のデータへいく

                    }
                    // データ配列をjqGrid用配列に格納
                    setData = studentData;

                    jqGridDataSet();

                };

        	}
		});
    })

    function jqGridDataSet() {
        jQuery(document).ready(function() {
            setData;
        })

        // テーブルの列名
        var colModelSettings = [
            {name:'m_subject_id',width: 250},
            {name:'m_subject_name',width: 250},
            {name:'m_course_id',width: 250},
            {name:'m_course_name',width: 250},
            {name:'m_course_takingmodelname',width: 250},
            {name:'m_course_studyyears',width: 250},
            {name:'edit', align: 'center', sortable: false, width: 40, formatter: function(){ return "<button type='button' name='button' value='button'><font size='2' color='#333399'>edit</font></button>";}}
        ]

        jQuery("#list").jqGrid({
            data: setData,
            datatype: "local", //localなのは
            colNames:['学科番号', '学科名称', 'コース番号','コース名称','履修モデル名称','履修年限','edit'],
            colModel:colModelSettings,
            rowNum : 10,
            rowList : [1, 5, 10],
            caption : "学科・コース一覧",
            height : 400,
            width: 1585,
            pager : 'pager1',
            beforeSelectRow: function (rowid, e) {
                var $self = $(this),
                $td = $(e.target).closest("td"),
                rowid = $td.closest("tr.jqgrow").attr("id"),
                iCol = $.jgrid.getCellIndex($td[0]),
                cm = $self.jqGrid("getGridParam", "colModel");
            if (cm[iCol].name === "edit") {
            alert('Edit id: ' + rowid);
            return false; // don't select the row on click
        }
        return true;
    }
        });

        jQuery("#list").jqGrid('navGrid','#pager1');

         $("#list").filterToolbar({
            defaultSearch:'in'
        });
    }
