<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/resources/jstl/setting.jsp" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"><meta name="viewport" content="width=divice-width, initial-scale=1">
<link rel="stylesheet" href="${path}/resources/css/user/join.css">
<title>회원가입</title>
<script src="https://kit.fontawesome.com/46af44825d.js" crossorigin="anonymous"></script>
<script src="${path}/resources/js/customer/main.js" defer></script>

<!-- join.js -->
<script src="${path}/resources/js/user/join.js" defer></script>
</head>
<body>
	<div class="wrap">
		<!-- header 시작 -->
		<%@ include file="/WEB-INF/views/resources/common/header/login_header.jsp" %>
		<!-- header 끝 -->
		
		<!-- contents 시작 -->
		<div class="container px-10 py-5">
		  <main>
		  <form name="joinform" action="joinAction.us" method="post" id="signup-form"
			onsubmit="return signInCheck(event)">
								
			<!-- 2-1. 중복확인 -->
			<input type="hidden" name="hiddenUserEmail" value="0">
			<input type="hidden" name="hiddenUserNickname" value="0">
		     <div class="col">
		        <h4 class="mb-3">회원가입</h4>
		          <div class="row g-3">
		          
		          <!-- 이메일 시작 -->
		          	<div class="col-12">
		              <label for="email" class="form-label">이메일 <span class="text-body-secondary">(로그인시 아이디로 사용)</span></label>
		              	<div class="row">
			              <div class="col-10">
								<div class="input-group mb-3">
								  <input type="text" class="form-control" name="email1" size="20" placeholder="이메일 앞부분" aria-label="이메일 앞부분" required>
								  <span class="input-group-text">@</span>
								  <input type="text" class="form-control" name="email2" size="20" placeholder="이메일 뒷부분" aria-label="이메일 뒷부분" required>
								  <select class="form-select" name="email3" onchange="selectEmailChk()">
									    <option selected>자동선택</option>
									    <option value="naver.com">naver.com</option>
									    <option value="gmail.com">gmail.com</option>
									    <option value="hanmail.net">hanmail.net</option>
									    <option value="nate.com">nate.com</option>
								  </select>
								 </div>
							</div>
							<div class="col-2">
								<button type="button" class="btn btn-primary p-1" name="dubChk" onclick="confirmId()">중복확인</button>
							</div>
					  	</div>
		            </div>
		            <!-- 이메일 끝 -->
		            
		            <!-- 닉네임 시작 -->
		            <div class="col-10">
		              <label for="firstName" class="form-label">닉네임</label>
		              <input type="text" class="form-control" name="userNickname" size="20" required>
		            </div>
		            <div class="col-2" style="padding-top: 2rem !important;">
						<button type="button" class="btn btn-primary p-1" name="dubChk" value="중복확인" onclick="confirmId2()">중복확인</button>
					</div>
					<!-- 닉네임 끝 -->
					
					<!-- 비밀번호 시작 -->
					<div class="col-12">
		              <label for="address" class="form-label">비밀번호</label>
		              <input type="password" class="form-control" name="userPW" size="20" placeholder="8~16자 숫자,영문자로 입력" required>
		            </div>
					<!-- 비밀번호 끝 -->
					
					<!-- 비밀번호 확인 시작 -->
					<div class="col-12">
		              <label for="address" class="form-label">비밀번호 확인</label>
		              <input type="password" class="form-control" name="confirmPassword" size="20" placeholder="다시한번 입력해주세요" required>
		            </div>
					<!-- 비밀번호 확인 끝 -->
					
					<!-- 이름 시작 -->
		            <div class="col-sm-6">
		              <label for="firstName" class="form-label">성</label>
		              <input type="text" class="form-control" name="lastName" size="20" placeholder="성 작성" required>
		            </div>
		
		            <div class="col-sm-6">
		              <label for="lastName" class="form-label">이름</label>
		              <input type="text" class="form-control" name="firstName" size="20" placeholder="이름 작성" required>
		            </div>
					<!-- 이름 끝 -->
					
					<!-- 생년월일 시작 -->
		            <div class="col-12">
		              <label for="username" class="form-label">생년월일</label>
		              <input type="date" class="form-control" name="userBirth" size="8" placeholder="- 없이 생년월일 8자리 ex)19990101" required>
		            </div>
					<!-- 생년월일 끝 -->
		            
		            <!-- 전화번호 시작 -->
		          	<div class="col-12">
		              <label class="form-label">전화번호</label>
		              	<div class="row">
							<div class="input-group mb-3">
								  <input type="text" class="form-control" name="hp1" size="3" required>
								  <span class="input-group-text">-</span>
								  <input type="text" class="form-control" name="hp2" size="4" required>
								  <span class="input-group-text">-</span>
								  <input type="text" class="form-control" name="hp3" size="4" required>
							 </div>
					  	</div>
		            </div>
		            <!-- 전화번호 끝 -->
		            
		            <!-- 나라 시작 -->
		            <div class="col-12">
		              <label class="form-label">나라</label>
		              <select class="form-select" name="userCountry">
										<option value="">나라를 선택하세요</option>
										<option value="Afghanistan"  name="userCountry">Afghanistan</option>
										<option value="Åland Islands" name="userCountry">Aland Islands</option>
										<option value="Albania" name="userCountry">Albania</option>
										<option value="Algeria" name="userCountry">Algeria</option>
										<option value="American Samoa" name="userCountry">American Samoa</option>
										<option value="Andorra" name="userCountry">Andorra</option>
										<option value="Angola" name="userCountry">Angola</option>
										<option value="Anguilla" name="userCountry">Anguilla</option>
										<option value="Antarctica" name="userCountry">Antarctica</option>
										<option value="Antigua and Barbuda" name="userCountry">Antigua and Barbuda</option>
										<option value="Argentina" name="userCountry">Argentina</option>
										<option value="Armenia" name="userCountry">Armenia</option>
										<option value="Aruba" name="userCountry">Aruba</option>
										<option value="Australia" name="userCountry">Australia</option>
										<option value="Austria" name="userCountry">Austria</option>
										<option value="Azerbaijan" name="userCountry">Azerbaijan</option>
										<option value="Bahamas" name="userCountry">Bahamas</option>
										<option value="Bahrain" name="userCountry">Bahrain</option>
										<option value="Bangladesh" name="userCountry">Bangladesh</option>
										<option value="Barbados" name="userCountry">Barbados</option>
										<option value="Belarus" name="userCountry">Belarus</option>
										<option value="Belgium" name="userCountry">Belgium</option>
										<option value="Belize" name="userCountry">Belize</option>
										<option value="Benin" name="userCountry">Benin</option>
										<option value="Bermuda" name="userCountry">Bermuda</option>
										<option value="Bhutan" name="userCountry">Bhutan</option>
										<option value="Bolivia (Plurinational State of)" name="userCountry">Bolivia (Plurinational State of)</option>
										<option value="Bonaire, Sint Eustatius and Saba" name="userCountry">Bonaire, Sint Eustatius and Saba</option>
										<option value="Bosnia and Herzegovina" name="userCountry">Bosnia and Herzegovina</option>
										<option value="Botswana" name="userCountry">Botswana</option>
										<option value="Bouvet Island" name="userCountry">Bouvet Island</option>
										<option value="Brazil" name="userCountry">Brazil</option>
										<option value="British Indian Ocean Territory" name="userCountry">British Indian Ocean Territory</option>
										<option value="Brunei Darussalam" name="userCountry">Brunei Darussalam</option>
										<option value="Bulgaria" name="userCountry">Bulgaria</option>
										<option value="Burkina Faso" name="userCountry">Burkina Faso</option>
										<option value="Burundi" name="userCountry">Burundi</option>
										<option value="Cabo Verde" name="userCountry">Cabo Verde</option>
										<option value="Cambodia" name="userCountry">Cambodia</option>
										<option value="Cameroon" name="userCountry">Cameroon</option>
										<option value="Canada" name="userCountry">Canada</option>
										<option value="Cayman Islands" name="userCountry">Cayman Islands</option>
										<option value="Central African Republic" name="userCountry">Central African Republic</option>
										<option value="Chad" name="userCountry">Chad</option>
										<option value="Chile" name="userCountry">Chile</option>
										<option value="China" name="userCountry">China</option>
										<option value="Christmas Island" name="userCountry">Christmas Island</option>
										<option value="Cocos (Keeling) Islands" name="userCountry">Cocos (Keeling) Islands</option>
										<option value="Colombia" name="userCountry">Colombia</option>
										<option value="Comoros" name="userCountry">Comoros</option>
										<option value="Congo" name="userCountry">Congo</option>
										<option value="Congo, Democratic Republic of the" name="userCountry">Congo, Democratic Republic of the</option>
										<option value="Cook Islands" name="userCountry">Cook Islands</option>
										<option value="Costa Rica" name="userCountry">Costa Rica</option>
										<option value="Côte d'Ivoire" name="userCountry">Côte d'Ivoire</option>
										<option value="Croatia" name="userCountry">Croatia</option>
										<option value="Cuba" name="userCountry">Cuba</option>
										<option value="Curaçao" name="userCountry">Curaçao</option>
										<option value="Cyprus" name="userCountry">Cyprus</option>
										<option value="Czechia" name="userCountry">Czechia</option>
										<option value="Denmark" name="userCountry">Denmark</option>
										<option value="Djibouti" name="userCountry">Djibouti</option>
										<option value="Dominica" name="userCountry">Dominica</option>
										<option value="Dominican Republic" name="userCountry">Dominican Republic</option>
										<option value="Ecuador" name="userCountry">Ecuador</option>
										<option value="Egypt" name="userCountry">Egypt</option>
										<option value="El Salvador" name="userCountry">El Salvador</option>
										<option value="Equatorial Guinea" name="userCountry">Equatorial Guinea</option>
										<option value="Eritrea" name="userCountry">Eritrea</option>
										<option value="Estonia" name="userCountry">Estonia</option>
										<option value="Eswatini" name="userCountry">Eswatini</option>
										<option value="Ethiopia" name="userCountry">Ethiopia</option>
										<option value="Falkland Islands (Malvinas)" name="userCountry">Falkland Islands (Malvinas)</option>
										<option value="Faroe Islands" name="userCountry">Faroe Islands</option>
										<option value="Fiji" name="userCountry">Fiji</option>
										<option value="Finland" name="userCountry">Finland</option>
										<option value="France" name="userCountry">France</option>
										<option value="French Guiana" name="userCountry">French Guiana</option>
										<option value="French Polynesia" name="userCountry">French Polynesia</option>
										<option value="French Southern Territories" name="userCountry">French Southern Territories</option>
										<option value="Gabon" name="userCountry">Gabon</option>
										<option value="Gambia" name="userCountry">Gambia</option>
										<option value="Georgia" name="userCountry">Georgia</option>
										<option value="Germany" name="userCountry">Germany</option>
										<option value="Ghana" name="userCountry">Ghana</option>
										<option value="Gibraltar" name="userCountry">Gibraltar</option>
										<option value="Greece" name="userCountry">Greece</option>
										<option value="Greenland" name="userCountry">Greenland</option>
										<option value="Grenada" name="userCountry">Grenada</option>
										<option value="Guadeloupe" name="userCountry">Guadeloupe</option>
										<option value="Guam" name="userCountry">Guam</option>
										<option value="Guatemala" name="userCountry">Guatemala</option>
										<option value="Guernsey" name="userCountry">Guernsey</option>
										<option value="Guinea" name="userCountry">Guinea</option>
										<option value="Guinea-Bissau" name="userCountry">Guinea-Bissau</option>
										<option value="Guyana" name="userCountry">Guyana</option>
										<option value="Haiti" name="userCountry">Haiti</option>
										<option value="Heard Island and McDonald Islands" name="userCountry">Heard Island and McDonald Islands</option>
										<option value="Holy See" name="userCountry">Holy See</option>
										<option value="Honduras" name="userCountry">Honduras</option>
										<option value="Hong Kong" name="userCountry">Hong Kong</option>
										<option value="Hungary" name="userCountry">Hungary</option>
										<option value="Iceland" name="userCountry">Iceland</option>
										<option value="India" name="userCountry">India</option>
										<option value="Indonesia" name="userCountry">Indonesia</option>
										<option value="Iran (Islamic Republic of)" name="userCountry">Iran (Islamic Republic of)</option>
										<option value="Iraq" name="userCountry">Iraq</option>
										<option value="Ireland" name="userCountry">Ireland</option>
										<option value="Isle of Man" name="userCountry">Isle of Man</option>
										<option value="Israel" name="userCountry">Israel</option>
										<option value="Italy" name="userCountry">Italy</option>
										<option value="Jamaica" name="userCountry">Jamaica</option>
										<option value="Japan" name="userCountry">Japan</option>
										<option value="Jersey" name="userCountry">Jersey</option>
										<option value="Jordan" name="userCountry">Jordan</option>
										<option value="Kazakhstan" name="userCountry">Kazakhstan</option>
										<option value="Kenya" name="userCountry">Kenya</option>
										<option value="Kiribati" name="userCountry">Kiribati</option>
										<option value="Korea (Democratic People's Republic of)" name="userCountry">Korea (Democratic People's Republic of)</option>
										<option value="Korea, Republic of" name="userCountry">Korea, Republic of</option>
										<option value="Kuwait" name="userCountry">Kuwait</option>
										<option value="Kyrgyzstan" name="userCountry">Kyrgyzstan</option>
										<option value="Lao People's Democratic Republic" name="userCountry">Lao People's Democratic Republic</option>
										<option value="Latvia" name="userCountry">Latvia</option>
										<option value="Lebanon" name="userCountry">Lebanon</option>
										<option value="Lesotho" name="userCountry">Lesotho</option>
										<option value="Liberia" name="userCountry">Liberia</option>
										<option value="Libya" name="userCountry">Libya</option>
										<option value="Liechtenstein" name="userCountry">Liechtenstein</option>
										<option value="Lithuania" name="userCountry">Lithuania</option>
										<option value="Luxembourg" name="userCountry">Luxembourg</option>
										<option value="Macao" name="userCountry">Macao</option>
										<option value="Madagascar" name="userCountry">Madagascar</option>
										<option value="Malawi" name="userCountry">Malawi</option>
										<option value="Malaysia" name="userCountry">Malaysia</option>
										<option value="Maldives" name="userCountry">Maldives</option>
										<option value="Mali" name="userCountry">Mali</option>
										<option value="Malta" name="userCountry">Malta</option>
										<option value="Marshall Islands" name="userCountry">Marshall Islands</option>
										<option value="Martinique" name="userCountry">Martinique</option>
										<option value="Mauritania" name="userCountry">Mauritania</option>
										<option value="Mauritius" name="userCountry">Mauritius</option>
										<option value="Mayotte" name="userCountry">Mayotte</option>
										<option value="Mexico" name="userCountry">Mexico</option>
										<option value="Micronesia (Federated States of)" name="userCountry">Micronesia (Federated States of)</option>
										<option value="Moldova, Republic of" name="userCountry">Moldova, Republic of</option>
										<option value="Monaco" name="userCountry">Monaco</option>
										<option value="Mongolia" name="userCountry">Mongolia</option>
										<option value="Montenegro" name="userCountry">Montenegro</option>
										<option value="Montserrat" name="userCountry">Montserrat</option>
										<option value="Morocco" name="userCountry">Morocco</option>
										<option value="Mozambique" name="userCountry">Mozambique</option>
										<option value="Myanmar" name="userCountry">Myanmar</option>
										<option value="Namibia" name="userCountry">Namibia</option>
										<option value="Nauru" name="userCountry">Nauru</option>
										<option value="Nepal" name="userCountry">Nepal</option>
										<option value="Netherlands, Kingdom of the" name="userCountry">Netherlands, Kingdom of the</option>
										<option value="New Caledonia" name="userCountry">New Caledonia</option>
										<option value="New Zealand" name="userCountry">New Zealand</option>
										<option value="Nicaragua" name="userCountry">Nicaragua</option>
										<option value="Niger" name="userCountry">Niger</option>
										<option value="Nigeria" name="userCountry">Nigeria</option>
										<option value="Niue" name="userCountry">Niue</option>
										<option value="Norfolk Island" name="userCountry">Norfolk Island</option>
										<option value="North Macedonia" name="userCountry">North Macedonia</option>
										<option value="Northern Mariana Islands" name="userCountry">Northern Mariana Islands</option>
										<option value="Norway" name="userCountry">Norway</option>
										<option value="Oman" name="userCountry">Oman</option>
										<option value="Pakistan" name="userCountry">Pakistan</option>
										<option value="Palau" name="userCountry">Palau</option>
										<option value="Palestine, State of[b]" name="userCountry">Palestine, State of[b]</option>
										<option value="Panama" name="userCountry">Panama</option>
										<option value="Papua New Guinea" name="userCountry">Papua New Guinea</option>
										<option value="Paraguay" name="userCountry">Paraguay</option>
										<option value="Peru" name="userCountry">Peru</option>
										<option value="Philippines" name="userCountry">Philippines</option>
										<option value="Pitcairn" name="userCountry">Pitcairn</option>
										<option value="Poland" name="userCountry">Poland</option>
										<option value="Portugal" name="userCountry">Portugal</option>
										<option value="Puerto Rico" name="userCountry">Puerto Rico</option>
										<option value="Qatar" name="userCountry">Qatar</option>
										<option value="Réunion" name="userCountry">Réunion</option>
										<option value="Romania" name="userCountry">Romania</option>
										<option value="Russian Federation" name="userCountry">Russian Federation</option>
										<option value="Rwanda" name="userCountry">Rwanda</option>
										<option value="Saint Barthélemy" name="userCountry">Saint Barthélemy</option>
										<option value="Saint Helena, Ascension and Tristan da Cunha" name="userCountry">Saint Helena, Ascension and Tristan da Cunha</option>
										<option value="Saint Kitts and Nevis" name="userCountry">Saint Kitts and Nevis</option>
										<option value="Saint Lucia" name="userCountry">Saint Lucia</option>
										<option value="Saint Martin (French part)" name="userCountry">Saint Martin (French part)</option>
										<option value="Saint Pierre and Miquelon" name="userCountry">Saint Pierre and Miquelon</option>
										<option value="Saint Vincent and the Grenadines" name="userCountry">Saint Vincent and the Grenadines</option>
										<option value="Samoa" name="userCountry">Samoa</option>
										<option value="San Marino" name="userCountry">San Marino</option>
										<option value="Sao Tome and Principe" name="userCountry">Sao Tome and Principe</option>
										<option value="Saudi Arabia" name="userCountry">Saudi Arabia</option>
										<option value="Senegal" name="userCountry">Senegal</option>
										<option value="Serbia" name="userCountry">Serbia</option>
										<option value="Seychelles" name="userCountry">Seychelles</option>
										<option value="Sierra Leone" name="userCountry">Sierra Leone</option>
										<option value="Singapore" name="userCountry">Singapore</option>
										<option value="Sint Maarten (Dutch part)" name="userCountry">Sint Maarten (Dutch part)</option>
										<option value="Slovakia" name="userCountry">Slovakia</option>
										<option value="Slovenia" name="userCountry">Slovenia</option>
										<option value="Solomon Islands" name="userCountry">Solomon Islands</option>
										<option value="Somalia" name="userCountry">Somalia</option>
										<option value="South Africa" name="userCountry">South Africa</option>
										<option value="South Georgia and the South Sandwich Islands" name="userCountry">South Georgia and the South Sandwich Islands</option>
										<option value="South Sudan" name="userCountry">South Sudan</option>
										<option value="Spain" name="userCountry">Spain</option>
										<option value="Sri Lanka" name="userCountry">Sri Lanka</option>
										<option value="Sudan" name="userCountry">Sudan</option>
										<option value="Suriname" name="userCountry">Suriname</option>
										<option value="Svalbard and Jan Mayen[e]" name="userCountry">Svalbard and Jan Mayen[e]</option>
										<option value="Sweden" name="userCountry">Sweden</option>
										<option value="Switzerland" name="userCountry">Switzerland</option>
										<option value="Syrian Arab Republic" name="userCountry">Syrian Arab Republic</option>
										<option value="Taiwan, Province of China" name="userCountry">Taiwan, Province of China</option>
										<option value="Tajikistan" name="userCountry">Tajikistan</option>
										<option value="Tanzania, United Republic of" name="userCountry">Tanzania, United Republic of</option>
										<option value="Thailand" name="userCountry">Thailand</option>
										<option value="Timor-Leste" name="userCountry">Timor-Leste</option>
										<option value="Togo" name="userCountry">Togo</option>
										<option value="Tokelau" name="userCountry">Tokelau</option>
										<option value="Tonga" name="userCountry">Tonga</option>
										<option value="Trinidad and Tobago" name="userCountry">Trinidad and Tobago</option>
										<option value="Tunisia" name="userCountry">Tunisia</option>
										<option value="Türkiye" name="userCountry">Türkiye</option>
										<option value="Turkmenistan" name="userCountry">Turkmenistan</option>
										<option value="Turks and Caicos Islands" name="userCountry">Turks and Caicos Islands</option>
										<option value="Tuvalu" name="userCountry">Tuvalu</option>
										<option value="Uganda" name="userCountry">Uganda</option>
										<option value="Ukraine" name="userCountry">Ukraine</option>
										<option value="United Arab Emirates" name="userCountry">United Arab Emirates</option>
										<option value="United Kingdom of Great Britain and Northern Ireland" name="userCountry">United Kingdom of Great Britain and Northern Ireland</option>
										<option value="United States of America" name="userCountry">United States of America</option>
										<option value="United States Minor Outlying Islands" name="userCountry">United States Minor Outlying Islands</option>
										<option value="Uruguay" name="userCountry">Uruguay</option>
										<option value="Uzbekistan" name="userCountry">Uzbekistan</option>
										<option value="Vanuatu" name="userCountry">Vanuatu</option>
										<option value="Venezuela (Bolivarian Republic of)" name="userCountry">Venezuela (Bolivarian Republic of)</option>
										<option value="Viet Nam" name="userCountry">Viet Nam</option>
										<option value="Virgin Islands (British)" name="userCountry">Virgin Islands (British)</option>
										<option value="Virgin Islands (U.S.)" name="userCountry">Virgin Islands (U.S.)</option>
										<option value="Wallis and Futuna" name="userCountry">Wallis and Futuna</option>
										<option value="Western Sahara" name="userCountry">Western Sahara</option>
										<option value="Yemen" name="userCountry">Yemen</option>
										<option value="Zambia" name="userCountry">Zambia</option>
										<option value="Zimbabwe" name="userCountry">Zimbabwe</option>
									</select>
		            </div>
		            <!-- 나라 끝 -->
		
		          <hr class="my-4">
		
		          <div class="form-check">
		            <input type="checkbox" class="form-check-input" id="same-address">
		            <label class="form-check-label" for="same-address">개인정보처리방침</label>
		          </div>
		
		          <div class="form-check">
		            <input type="checkbox" class="form-check-input" id="save-info">
		            <label class="form-check-label" for="save-info">이용약관</label>
		          </div>
		
		
		          <hr class="my-4">
		
		          <button class="w-100 btn btn-primary btn-lg" type="submit">회원가입</button>
		      </div>
		    </div>
		    </form>
		  </main>
		</div>
							
		<!-- contents 끝 -->
		
	<!-- footer 시작 -->
	<%-- <%@ include file="../../common/footer.jsp" %> --%>
	<!-- footer 끝 -->
	</div>
</body>
</html>