# :pushpin: fongdang
## 1. 프로젝트 정보
>#### 1.1 프로젝트 명: 퐁당(fongdang)  
>- 카테고리를 축소하여 타 대형 펀딩 사이트보다 더 전문적인 카테고리로 실용적인 상품들을 접할 수 있습니다.
>- 와디즈 사이트를 벤치마킹하여 불필요한 요소를 제거했고 사용자 편의성에 초점을 두었습니다.
>- 상품 등록 전 사이트 관리자를 통해 상품이 적합한지 첨부 서류를 통해 확인하고, 상품 등록 이후 사용자들의 신고 접수를 통해 상품들을 관리함으로써 신뢰성있는 펀딩이 이뤄지도록 했습니다.
>- 소비자, 판매자, 퐁당 관리자간의 원활한 의사소통과 신고 기능으로 적합하지 않은 상품을 관리하여 소비자에게 피해가 가지 않는 신뢰성 있는 사이트를 중점으로 두었습니다.

</br>

>#### 1.2 기한 및 인원     
>- 제작 기간: 2022년 05월 23일 ~ 2022년 08월 02일    
>- 참여인원 : 총 5명

</br>

## 2. 사용 기술
>#### 2-1. 개발 환경   
 >- Apache Tomcat Web Server 9.0   
 >- Visual Studio Code 1.66   
 >- Spring tool suite 3 (Version: 3.9.18.RELEASE)    
 >- Get Started With Oracle Database 11g Express Edition   
  /Oracle SQL Developer, Version:Oracle IDE 17.2.0, Oracle IDE 21.2.1    
 >- listly
 >- StarUML, Version: 5.0.1   
 >- draw.io
 >- Operating System: Windows 10 Pro/Home x64
 
>#### 2-2. `Back-end`
  >- Java 11
  >- JSP
  >- JSTL-1.2
  >- Oracle
  >- Spring Framework
  >- MyBatis
  >- Ajax  
  >- SMTP
  >- cloudinary 
  >- OAuth2.0
  >- REST API
   
>#### 2-3. `Front-end`
  >- HTML5
  >- CSS3
  >- JavaScript
  >- jQuery
  >- Ajax
  >- BootStrap

</br>

## 3. ERD 설계
![fongdang-ERD](https://user-images.githubusercontent.com/98321110/194699929-b9668700-3b1a-4429-a752-73f1ac939fce.png)

</br>

## 4. 핵심 기능
>- 일반·개인·기업 사업자가 다양하고 참신한 아이템들을 합리적인 가격으로 소개하여 다른 사람들에게 후원받아 판매하는 크라우즈 펀딩 웹 사이트입니다.   

</br>

### 4-1. 프로젝트 흐름   
![spring_structure](https://user-images.githubusercontent.com/98321110/194737059-f544d195-0919-4d0c-9cf9-01a69246d844.PNG)   

</br>

### 4-2. 사용자 요청
![user_request_code(1)](https://user-images.githubusercontent.com/98321110/195053256-40eb5b63-0dc5-40c7-b14e-09a0266b39a3.PNG)

- **Ajax를 통한 비동기 요청 또는 javascript를 이용한 특정 url로 양식 값 전달**
  - 사용자로부터 이벤트 발생 시 Ajax방식을 통해 결과 값을 받거나, form태그를 통해 양식 값을 특정 url로 전달합니다.   
</br>

### 4-3. Controller
![controller_code(1)](https://user-images.githubusercontent.com/98321110/195058134-82d7eb86-75ed-41cc-8412-22ab0f894374.PNG)
- **사용자 요청처리**
  - Spring MVC의 구성 요소 중 하나인 DispatcherServlet을 통해 클라이언트의 요청을 받고 결과 값을 View에 전달합니다.
  - Spring MVC의 구성 요소 중 하나인 HandlerMapping을 통해 클라이언트가 요청한 url을 어떤 컨트롤러 또는 메소드가 처리할 지 결정합니다.
</br>

### 4-4. Service
![service_code(1)](https://user-images.githubusercontent.com/98321110/196033241-42712f5e-63f2-422b-8572-0d2beb9df987.PNG)   
- **다형성 구현**
  - 인터페이스를 통해 객체의 사용방법을 정리하였으며 설계 단계와 결과 단계의 산출물을 효율적으로 관리하였습니다.
</br>

### 4-5. Repository
![repository_code(1)](https://user-images.githubusercontent.com/98321110/196034455-792d8ba2-be30-4746-844f-7304239b5e57.PNG)
- **로직 처리**
  - MyBatis를 통한 데이터와의 연결을 위해 java의 SqlSession객체를 사용했습니다.
  - jdbc관련 설정과 프로젝트에서 사용하는 mapper.xml파일들을 mybatis-config.xml파일에서 관리하도록 했습니다.

</br>


## 5. 프로젝트에서 맡은 기능
>- 회원 관리   
 > 일반회원 로그인/로그아웃 및 소셜 로그인 API 기능   
 > 아이디저장 기능   
 > 아이디/비밀번호 찾기 기능   
 > 비회원의 회원 가입 기능   
 > 내 정보(개인 회원정보 조회/수정/탈퇴)    

 >- 관리자 회원관리
 > 회원정보 목록 조회/탈퇴
 </br>
 
 ### 5-1 프로젝트 내용
 - 소셜 로그인 API 
   
 ![image](https://user-images.githubusercontent.com/98321110/196035066-7295cada-82dc-47dd-ae62-a504c304b524.png)     
 **화면설명:** 로그인 페이지에서 카카오 계정을 통해 로그인하는 경우의 사용자가 보여지는 화면   
 
 ---
 
 ![image](https://user-images.githubusercontent.com/98321110/196035135-60805346-04c9-488c-8794-b6be26d9d275.png)    
 **화면설명:** 카카오 로그인 이 후 카카오 서버에 접근 토큰 발급을 요청   
 
 ---
 
 ![image](https://user-images.githubusercontent.com/98321110/196035241-e604618a-2ae6-45c5-a481-3f5aa1a70545.png)    
 **화면설명:** 카카오 서버로부터 발급받은 접근 요청 토큰을 통해 사용자 로그인 정보를 서버에 요청   
 
 ---
 
 ![image](https://user-images.githubusercontent.com/98321110/196035312-95df967b-1d9c-4d22-88e8-e102d07669b7.png)    
 **화면설명:** 카카오 서버로부터 받은 사용자의 정보를 조회하여 결과에 따라 회원가입과 로그인을 진행   
 
 ---
 
 - mail API   
 ![image](https://user-images.githubusercontent.com/98321110/196035389-f01ef17e-4fd2-426d-bccf-f5772050af59.png)    
 **화면설명:** 사용자가 아이디·비밀번호 찾기 페이지에서 비밀번호 찾기를 진행하는 경우 보여지는 화면             
  
 ---
 
 ![image](https://user-images.githubusercontent.com/98321110/196035437-47898cb2-2221-4866-9e67-b2c5f70a3c6e.png)    
 **화면설명:** 사용자가 이메일로 전송된 인증번호를 화면에 입력한다.
 
 </br>

## 6. 프로젝트 과정에서 생긴 issue
>- 

</br>

## 7. 참고 사이트
>- Bootstrap: https://getbootstrap.com/
>- wadiz: https://www.wadiz.kr/web/main
>- 크라우디: https://www.ycrowdy.com/
>- 텀블벅: https://tumblbug.com/discover

</br>

## 8. 느낀점
>- 이전 프로젝트와 다른 환경에서 MyBatis와 Spring framework를 사용함으로써 코드가 간결해지고 객체 관리, 로직 처리 측면에서 더 편리했으며 다양한 API들을 적용해볼 수 있어 좋은 경험이었습니다.

