<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="doancuoiky.model.NguoiDung" %>
<%@ page import="doancuoiky.model.Lop" %>
<%@ page import="doancuoiky.dao.LopDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/templates/SV/css/thongtin.css">
  <!-- Font Awesome Cdn Link -->
  <%@ include file="/views/common/header.jsp" %>
  <%@include file="/views/common/CTSV/menu.jsp"%>
  <%@ include file="/views/common/footer.jsp" %>
   <script>
 // Hàm kiểm tra MaND và chuyển hướng
 function checkMaND() {
     var maND = '<%= session.getAttribute("MaND") %>';
     console.log("maND:", maND); 
     if (maND === 'null') {
         window.location.href = '<%=request.getContextPath()%>/views/dangnhap/dangnhap.jsp';
     }
 }

 // Gọi hàm kiểm tra khi trang được load
 window.onload = checkMaND;
    </script>
</head>
<body>
<!-- 
Lấy thông tin từ session -->

          <%
                    NguoiDung nguoidung1 = (NguoiDung)session.getAttribute("NguoiDung");
        
                    String tentinhtrang = (String)session.getAttribute("TenTinhTrang");
                    LopDao lopdao = new LopDao();
                    Lop lop = new Lop();
                    lop = lopdao.getLopByMaLop(nguoidung1.getMaLop());
               
           %>




<div class ='content'>

<div class="container">
  <div class="ThongTinContainer-info">
    <div class="ThongTin-info">
      <h2>Thông tin Nhân Viên</h2>
      <table>
        <tbody>
          <tr>
            <th>Mã số nhân viên</th>
            <td><%= nguoidung1.getMaNguoiDung() %></td>
          </tr>
          <tr>
            <th>Họ và tên</th>
            <td><%= nguoidung1.getHoTen() %></td>
          </tr>
          <tr>
            <th>Ngày sinh</th>
            <td><%= nguoidung1.getNgaySinh() %></td>
          </tr>
          <tr>
            <th>Giới tính</th>
            <td><%= nguoidung1.getGioiTinh() %></td>
          </tr>
           <tr>
            <th>Dân tộc</th>
            <td><%= nguoidung1.getDanToc() %></td>
          </tr>
           <tr>
            <th>Số CMND</th>
            <td><%= nguoidung1.getCmnd() %></td>
          </tr>
           <tr>
            <th>Tôn giáo</th>
            <td><%= nguoidung1.getTonGiao()%></td>
          </tr>
           <tr>
            <th>Địa chỉ</th>
            <td><%= nguoidung1.getDiaChi() %></td>
          </tr>
           <tr>
            <th>Quê quán</th>
            <td><%= nguoidung1.getQueQuan() %></td>
          </tr>
           <tr>
            <th>Tình trạng</th>
            <td><%= tentinhtrang %></td>
          </tr>
           
        </tbody>
      </table>
    </div>

    <div class="ThongTin-info">
      <h2>Thông tin Liên lạc</h2>
      <table>
        <tbody>
          <tr>
            <th>Số điện thoại</th>
            <td><%= nguoidung1.getSdt()%></td>
          </tr>
          <tr>
            <th>Email</th>
            <td><%= nguoidung1.getEmail() %></td>
          </tr>
        </tbody>
      </table>
       <div class="button-container-info">
     <a href="<%=request.getContextPath()%>/views/CTSV/doimatkhau.jsp" class="button-info" >Đổi mật khẩu</a>
  </div>
    </div>
    
    
  </div>
 
</body>
<style>
   
   .content {
    margin-top: 120px;    /* Khoảng cách phía trên */
    margin-right: 20px;   /* Khoảng cách phía phải */
    margin-bottom: 100px; /* Khoảng cách phía dưới */
    margin-left: 330px;  
    height: 100vh; /* Khoảng cách phía trái */
    z-index: 1;           /* Đặt giá trị z-index để đảm bảo nội dung nằm trên menu */
    position: relative;
    background-color: white; /* Thêm màu nền trắng */
    padding: 20px;         /* Thêm padding để tạo khoảng trắng xung quanh nội dung */
}
   
   </style>
</html>