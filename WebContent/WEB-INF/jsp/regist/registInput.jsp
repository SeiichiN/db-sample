<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>社員管理システム</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/style.css">
</head>
<body>
	<jsp:include page="/WEB-INF/jsp/common/header.jsp" />

	<div id="content">
		<jsp:include page="/WEB-INF/jsp/common/aside.jsp" />
		<main id="main">
			<h1>新規社員登録</h1>

			<form action="<%=request.getContextPath()%>/registConfirm" method="post">
				<table>
					<tr>
						<th>名前</th>
						<td><input class="indata" type="text" name="name"></td>
					</tr>
					<tr>
						<th>パスワード</th>
						<td><input type="password" class="indata" name="pass"></td>
					</tr>
					<tr>
						<th>性別</th>
						<td>
							<span class="gender"><input type="radio" name="gender" value="1">男性</span>
							<span class="gender"><input type="radio" name="gender" value="2">女性</span>
							<span class="gender"><input type="radio" name="gender" value="3">その他</span>
						</td>
					</tr>
					<tr>
						<th>誕生日</th>
						<td><input class="indata" type="text" name="birthday"></td>
					</tr>
					<tr>
						<th>出身</th>
						<td>
							<select class="state" name="state">
								<option value="01">北海道</option>
								<option value="02">青森県</option>
								<option value="03">岩手県</option>
								<option value="04">宮城県</option>
								<option value="05">秋田県</option>
								<option value="06">山形県</option>
								<option value="07">福島県</option>
								<option value="08">茨城県</option>
								<option value="09">栃木県</option>
								<option value="10">群馬県</option>
								<option value="11">埼玉県</option>
								<option value="12">千葉県</option>
								<option value="13">東京都</option>
								<option value="14">神奈川県</option>
								<option value="15">新潟県</option>
								<option value="16">富山県</option>
								<option value="17">石川県</option>
								<option value="18">福井県</option>
								<option value="19">山梨県</option>
								<option value="20">長野県</option>
								<option value="21">岐阜県</option>
								<option value="22">静岡県</option>
								<option value="23">愛知県</option>
								<option value="24">三重県</option>
								<option value="25">滋賀県</option>
								<option value="26">京都府</option>
								<option value="27">大阪府</option>
								<option value="28">兵庫県</option>
								<option value="29">奈良県</option>
								<option value="30">和歌山県</option>
								<option value="31">鳥取県</option>
								<option value="32">島根県</option>
								<option value="33">岡山県</option>
								<option value="34">広島県</option>
								<option value="35">山口県</option>
								<option value="36">徳島県</option>
								<option value="37">香川県</option>
								<option value="38">愛媛県</option>
								<option value="39">高知県</option>
								<option value="40">福岡県</option>
								<option value="41">佐賀県</option>
								<option value="42">長崎県</option>
								<option value="43">熊本県</option>
								<option value="44">大分県</option>
								<option value="45">宮崎県</option>
								<option value="46">鹿児島県</option>
								<option value="47">沖縄県</option>
						</select>
						</td>
					</tr>
					<tr>
						<th>部署</th>
						<td>
							<select class="dept" name="dept">
								<option value="d01">総務部</option>
								<option value="d02">経理部</option>
								<option value="d03">第一営業部</option>
								<option value="d04">開発部</option>
								<option value="d05">第二営業部</option>
							</select>
						</td>
					</tr>
				</table>
				<input class="submit-btn" id="create-confirm-btn" type="submit" value="確認">
			</form>
			<a href="<%=request.getContextPath()%>/list">
			    <button class="cancel-btn" id="create-cancel-btn">戻る</button></a>
		</main>
	</div>
	<!-- #content -->

	<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />
</body>
</html>