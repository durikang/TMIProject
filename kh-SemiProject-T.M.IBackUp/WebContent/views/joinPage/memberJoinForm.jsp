<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    body {
      background-image: url("../../resources/mainLogin/images/login2.jpg");
      background-size: 100%;
      margin: 7%;
      padding: auto;

    }
    table {
      width : 1000px;
      height: 600px;
      border: 2px solid black;
      margin: auto;
    }

    h1 {
      text-align: center;
      text-decoration-line: underline;
    }
  </style>
</head>
<body>
      <h1>회원가입</h1>
  <form name="write_form_member" action="<%= request.getContextPath() %>/insert.jo"  method="post">
	<table>
      <tr>
       <th>아이디</th>
       <td>
       <input type="text" name="UserId">
       <input type = "button" value = "중복확인"/>
       </td>
     </tr>

     <tr>
       <th>비밀번호</th>
       <td><input type="password" name="Userpw"> 영문/숫자포함 6자 이상</td>
     </tr>

     <tr>
       <th>비밀번호 확인</th>
       <td><input type="password" name="Userpw"></td>
     </tr>

     <tr>
        <th>비밀번호 힌트/답변</th>
        <td><select name='PWHINT' size='1' class='select'>
        <option value=''>선택하세요</option>
        <option value='30'>졸업한 초등학교 이름은?</option>
        <option value='31'>제일 친한 친구의 핸드폰 번호는?</option>
        <option value='32'>아버지 성함은?</option>
        <option value='33'>어머니 성함은?</option>
        <option value='34'>어릴 적 내 별명은?</option>
        <option value='35'>가장 아끼는 물건은?</option>
        <option value='36'>좋아하는 동물은?</option>
        <option value='37'>좋아하는 색깔은?</option>
        <option value='38'>좋아하는 음식은?</option>
      </select>
      </td>
      </tr>

      <tr>
         <th>답변</th>
         <td><input type='text' name='HINT'></td>
      </tr>
      
     <tr>
        <th> 이름</th>
        <td><input type="text" name="Username"></td>
     </tr>

     <tr>
        <th>생년월일</th>
        <td><input type="text" name="Birth"></td>
      </tr>

      <tr>
          <th>성별</th>
          <td><input type = "checkbox" name = "gender"/> 남자
              <input type = "checkbox" name = "gender"/> 여자
          </td>
        </tr>

      <tr>
        <th>핸드폰 번호</th>
         <td>
               <select>
                       <option> 010 </option>
                      </select> -
             <input type="text" name="Phone"> -
             <input type="text" name="Phone">
         </td>
        </tr>

       <tr>
         <th>이메일</th>
         <td>
           <input type='text' name="Email">@
           <input type='text' name="Email">
             <select name="Email">
                <option value="">직접입력</option>
                <option value="daum.net">naver.net</option>
                <option value="gmail.com">gmail.com</option>
                <option value="naver.com">daum.com</option>
                <option value="nate.com">nate.com</option>
             </select>
           </td>
        </tr>

        <tr>
          <th>주소</th>
          <td>
            <input type="text" name="Address" placeholder="ex) 서울시 OO구 OO동"><br>
            <input type="text" name="Address" placeholder="상세주소">
          </td>
        </tr>
       
        <tr>
          <th> 관심분야 </th>
          <td>
             <input type='checkbox' name='Favorite' value='17'> 액션
             <input type='checkbox' name='Favorite' value='18'> SF / 판타지
             <input type='checkbox' name='Favorite' value='19'> 드라마
             <input type='checkbox' name='Favorite' value='20'> 로맨틱
             <input type='checkbox' name='Favorite' value='21'> 코미디
             <input type='checkbox' name='Favorite' value='22'> 애니메이션
           </td>
        </tr>
          <tr>
            <td colspan="2" align="center"><br>
              <button>회원가입</button>
              <input type="reset" value="취소">
           </td>
          </tr>
        </table>
      </form>

</body>
</html>