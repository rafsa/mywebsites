<%@ Page Title="Welcome to my personal website" Language="C#" MasterPageFile="~/MasterPage/frotend.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="MasterPage_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <p>
        Hi My name is MD Rafsun Islam, I am studying computer and network security in dakota state university. i am an international student, My hometown is dhaka,Bangladesh. My favorite hobby is playing video game, reading books , watching tv series, playing soccer. i also love watching movies and spending time with My Friends</p>
    <head>
    
    <style type="text/css">
        .slider {
            width:600px;
            height:800px;
            overflow:hidden;
            margin:30px auto
        }



    </style>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
    <script type="text/javascript">

        function Slider() {

            $(".slider #1").show("fade", 500);
            $(".slider #1").delay(5500).hide("slide", { direction: "left" }, 5);
            var sc = $(".slider img").size();
            var count = 2;
            setInterval(function () {
                $(".slider #" + count).show("slide", { direction: "Right" }, 500);
                $(".slider #" + count).delay(5500).hide("slide", { direction: "left" }, 500);
                if (count == sc) {
                    count = 1;



                } else {
                    count = count + 1
                }

            }, 6500);
        }


    </script>
</head>
    <body onload="Slider();" ></body>
<body>
    <div class="slider">
    <img  id="1" src="10371335_10204085002789103_8875405416507239747_o.jpg" border="0"  width="750px" />
        <img id="2" src="10904577_1019420501405197_4201662170127079772_o.jpg" border="0"  width="750px" />
        <img id="3" src="10940448_1028385770508670_4485994324730601160_n.jpg" border="0"  width="750px" />


    </div>
</body>
    <h1>you can contact me at rafsanislam@live.com</h1>
</asp:Content>

