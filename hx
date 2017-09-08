<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        div input{
            margin-left: 40px;
        }
        table{
            margin-top: 40px;
            border-collapse: collapse;
        }
        td{
            width: 150px;
            height: 40px;
            border: 1px solid #000;
            text-align: center;
        }
    </style>
    <script src="../jquery-1.11.1.min.js"></script>
    <script>
        (function () {
            ("#btn").click(function () {

                var a=("div input").eq(0).val();
                var b=("div input").eq(1).val();
                var c=("div input").eq(2).val();
                if (a!=null&a!=""&b!=null&b!=""&c!=null&c!=""){
                 var text="<tr><td><input type='checkbox' class='checkitem'></td><td>"+a+"</td><td>"+b+"</td><td>"+c+"</td><td><button class='sc'>删除</button></td></tr>";
                  ("table").append(text);
                    ("div input").val("");
                }else{
                    alert("内容未添加完整");
                }
               (".sc").click(function () {
                   $(this).parents("tr").remove();
               })
            })
            ("#checkAll").click(function () {
                if ((this).is(":checked")){
                   (".checkitem").prop("checked",true);
                }else{
                    (".checkitem").prop("checked",false);
                }
            })
        })
    </script>
</head>
<body>
    <div>
          姓名<input type="text">
          密码  <input type="text">
           邮箱 <input type="text">
     <button id="btn">添加</button>
    </div>
<table>
    <thead><tr><td><input type="checkbox" id="checkAll">
    </td><td>姓名</td><td>密码</td><td>邮箱</td><td>操作</td></tr>
</table>
</body>
</html>


	 </script>
	</body>
</html>
