<!DOCTYPE html>
<html lang="en" data-bs-theme="dark">

<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta http-equiv="Content-Type" content="text/html" charset=UTF-8>
    <link href="/webjars/bootstrap/5.3.1/css/bootstrap.min.css" rel="stylesheet">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Inter:wght@400;700&display=swap">

    <style>
        body {
            background: linear-gradient(to right, #d10656, #380117);
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
            font-family: 'Inter', sans-serif;
        }

        .card {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            padding: 20px;
            padding: 20px;
            width: 100%;
        }

        .card-content {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .card-content h1 {
            custom-text-color: #380117;
            font-family: 'Inter', sans-serif;
        }

        .card svg {
            margin-bottom: 20px;
        }

        .form-floating input {
            border-radius: 5px;
            padding: 10px;
            margin-bottom: 20px;
        }

        .form-check {
            margin-top: 10px;
        }

        .btn-primary {
            background-color: #da5b74;
            border: none;
            padding: 10px;
            border-radius: 5px;
        }
    </style>
    <title>Login</title>
</head>
<body>
<div class="card">
    <div class="card-content">
        <svg xmlns="http://www.w3.org/2000/svg" width="112" height="68" viewBox="0 0 112 68" fill="none">
            <path d="M41.0335 1.02178C39.8952 2.32869 39.8952 3.35149 40.9793 4.99934C42.1718 6.81765 44.9363 6.53354 46.0204 4.48794C46.7251 3.1242 46.7251 2.84009 45.912 1.47636C44.7737 -0.285133 42.3345 -0.512423 41.0335 1.02178ZM44.7195 3.1242C44.7195 4.37429 43.0391 4.99934 42.1718 4.09018C41.2504 3.1242 42.1176 1.59 43.4728 1.81729C44.2859 1.93094 44.7195 2.38551 44.7195 3.1242Z" fill="#850437"/>
            <path d="M86.7829 7.38592C82.5007 9.03377 79.1942 12.159 76.9717 16.7616C75.2914 20.1709 75.0745 21.0801 75.0745 24.944C75.0745 32.6718 78.9773 38.8086 85.9698 42.1612C89.5474 43.9227 96.1605 43.9227 99.7922 42.218C103.045 40.6838 106.46 37.5017 105.755 36.763C105.321 36.3085 104.779 36.5358 103.966 37.3313C97.353 43.5817 87.8128 43.5249 81.5792 37.1608C78.0558 33.581 76.7007 30.2853 76.7007 25.0008C76.7007 21.4778 76.9717 20.1709 78.2185 17.5003C80.8745 11.8749 85.6446 8.52237 91.6614 8.06779C96.4857 7.72686 100.009 8.97694 103.532 12.3295C106.839 15.4547 108.411 18.4663 108.79 22.4438L109.061 25.3986L107.002 25.7395C105.809 25.9668 100.822 26.1373 95.8894 26.1373C86.7287 26.1373 83.4764 26.4782 83.4764 27.3305C83.4764 27.9556 94.6427 28.0124 104.074 27.4442L110.688 27.1033L110.471 23.353C109.983 16.7616 105.809 10.568 100.009 7.89732C96.1605 6.07901 90.5773 5.90854 86.7829 7.38592Z" fill="#850437"/>
            <path d="M54.5849 9.9997C51.441 11.7044 49.1102 14.9432 48.1887 18.864C47.5382 21.8756 47.755 43.468 48.5139 44.2067C49.1644 44.8886 49.869 42.8998 49.598 41.1951C49.4354 40.2292 49.327 35.0583 49.2728 29.6602C49.2728 20.3982 49.327 19.7163 50.5737 16.8184C53.7176 9.65876 62.4447 7.66998 68.1905 12.8408C71.9307 16.1933 72.3101 17.8412 72.2017 31.649C72.1475 41.3656 72.2559 43.7521 72.8522 43.7521C74.0447 43.7521 74.4241 22.8984 73.34 18.6367C72.3101 14.7159 69.7625 11.3634 66.5101 9.71558C63.1494 8.01092 58.0541 8.12456 54.5849 9.9997Z" fill="#850437"/>
            <path d="M0 22.8416C0 35.5129 0.0542055 36.1948 1.30093 38.9223C2.71027 42.1043 5.36634 44.8886 8.18503 45.9682C11.871 47.3888 11.6542 46.7637 11.8168 56.7645L11.9252 65.9129H10.2448C9.16072 65.9129 8.67288 66.1402 8.83549 66.5947C8.9439 67.1061 10.1364 67.3334 12.1962 67.3334C14.256 67.3334 15.4486 67.1061 15.6112 66.5947C15.7196 66.197 15.3401 65.9129 14.6897 65.9129C13.6056 65.9129 13.5514 65.6856 13.5514 56.3099V46.7069L15.1775 46.3092C16.099 46.0819 17.5084 45.2864 18.3757 44.5477C19.785 43.3544 20.0018 43.2976 20.6523 44.0931C21.5196 45.2295 24.2298 46.7069 26.2897 47.1615C28.1326 47.5593 27.97 46.2523 27.7532 59.0374L27.6448 65.856L25.7476 66.0265C24.6635 66.1402 23.7962 66.4243 23.6878 66.7652C23.6336 67.1061 25.5308 67.3902 28.3495 67.5039C32.0896 67.6175 33.1195 67.5039 32.9569 66.9357C32.7943 66.5379 31.927 66.1402 30.9513 66.0265L29.271 65.856L29.3794 56.7077L29.542 47.5593L31.8186 46.7638C35.0709 45.6273 38.2691 41.7066 39.0279 37.8995C39.8952 33.7514 39.57 11.2498 38.6485 10.9089C38.1064 10.7384 37.9438 13.4659 37.9438 23.4098C37.9438 30.9103 37.6728 36.9903 37.3476 38.354C36.5887 41.252 33.3906 44.5477 30.4635 45.5137C27.7532 46.366 24.7177 45.6273 22.3869 43.5249L20.9233 42.1611L21.9532 39.7178C22.9289 37.5017 23.0373 35.9675 23.0373 23.9212C23.0373 13.75 22.8747 10.5679 22.3869 10.3975C21.8448 10.1702 21.6822 13.0113 21.628 23.1257C21.628 35.7402 21.1401 40.1724 19.785 39.9451C18.4841 39.7746 17.942 35.4561 17.7794 23.2961C17.671 13.8068 17.4542 10.5679 16.9663 10.3407C16.4243 10.1702 16.2616 13.0113 16.2616 23.2961C16.2616 35.5698 16.3158 36.6494 17.4542 39.32L18.6467 42.218L17.4 43.2408C15.2317 45.1159 12.2504 45.7409 9.64857 44.8886C6.61307 43.9795 2.9813 40.1724 2.27663 37.2176C1.9514 35.9675 1.62616 29.3193 1.51775 22.5006C1.40934 13.1818 1.19252 9.99973 0.704671 9.77243C0.162616 9.60197 0 12.4431 0 22.8416Z" fill="#850437"/>
            <path d="M42.8223 16.5911C42.8223 20.1141 42.9849 27.7851 43.2017 33.6378C43.4727 42.1612 43.6896 44.3204 44.2858 44.3204C44.8821 44.3204 44.9905 42.218 44.7195 31.9331C44.34 16.307 43.9606 10.227 43.3101 10.227C43.0391 10.227 42.8223 13.125 42.8223 16.5911Z" fill="#850437"/>
            <path d="M73.1774 48.1843C73.1774 48.4116 73.8279 51.5936 74.641 55.2303C76.5382 64.2082 77.1886 64.1514 79.1942 54.7189C79.5737 53.071 80.0073 51.7073 80.2241 51.7073C80.441 51.7073 81.0914 53.9234 81.6335 56.6508C83.1512 63.9809 83.9643 63.6968 85.8615 55.1166C86.6746 51.3095 87.2167 48.0707 87.054 47.9002C86.3494 47.1615 85.6989 48.6957 84.8316 53.3551C84.2896 56.1963 83.6391 58.3555 83.4765 58.2419C83.2597 58.1282 82.6634 55.969 82.1213 53.4688C81.1456 48.923 80.4952 47.2183 80.0073 47.7866C79.8447 47.957 79.1942 50.2299 78.5438 52.8437C77.8933 55.5144 77.1886 57.8441 76.9718 58.1282C76.8092 58.3555 76.2129 56.2531 75.6709 53.4688C75.0746 50.4572 74.37 48.2411 73.9363 48.0707C73.5027 47.9002 73.1774 47.957 73.1774 48.1843Z" fill="#850437"/>
            <path d="M95.4016 48.582C95.4016 50.5708 99.2502 61.9353 99.9548 61.9353C100.28 61.9353 101.473 59.2078 102.557 55.7985L104.508 49.7185L104.562 55.7985L104.617 61.9353H108.14C110.145 61.9353 111.663 61.708 111.663 61.3671C111.663 61.0261 110.471 60.7988 109.007 60.7988C106.134 60.7988 105.863 60.5147 105.972 57.3895C106.026 55.4575 106.08 55.4007 108.302 55.2303C111.284 55.003 111.284 53.9802 108.248 53.9802C105.809 53.9802 105.701 53.8097 106.134 50.1163C106.188 49.6617 107.164 49.4344 108.953 49.4344C112.639 49.4344 112.422 48.2979 108.682 48.1843C107.056 48.1275 105.213 48.0706 104.562 48.0706C103.641 48.0138 103.153 48.8662 101.689 53.6961L99.9006 59.3783L98.3829 54.2643C96.8651 49.0935 95.4016 46.3092 95.4016 48.582Z" fill="#850437"/>
            <path d="M90.2521 48.9798C89.71 50.4572 86.1867 61.5944 86.1867 61.7648C86.1867 61.8785 86.5119 61.9353 86.9456 61.9353C87.3792 61.9353 87.9213 61.0261 88.1923 59.776C88.6259 57.7873 88.7885 57.6736 91.1194 57.5031C93.5586 57.3327 93.5586 57.3327 94.1007 59.4919C94.3717 60.7988 94.968 61.708 95.51 61.8216C96.2689 61.9921 96.1063 60.9125 94.2633 55.1734C92.7997 50.6277 91.7698 48.2979 91.282 48.2979C90.8483 48.2979 90.3605 48.6389 90.2521 48.9798ZM92.6371 55.2303C92.6913 56.0258 92.2577 56.2531 91.011 56.2531C89.4932 56.2531 89.3306 56.1394 89.6558 54.8325C89.8184 54.0938 90.2521 52.7301 90.5773 51.8777L91.1736 50.2867L91.8783 52.2755C92.3119 53.3551 92.6371 54.7189 92.6371 55.2303Z" fill="#850437"/>
        </svg>
        <h1 class="h3 mb-3 fw fw-inter custom-text-color">Please sign in</h1>
        <form action="/loginCliente" method="post">
            <div class="form-floating">
                <input type="text" id="floatingInput" name="usuario" placeholder="Usuario">
                <label for="nomedeUsuario"></label>
            </div>
            <div class="form-floating">
                <input type="password" id="floatingInput" name="senha" placeholder="Senha">
                <label for="senha"></label>
            </div>

            <button class="btn btn-primary w-100 py-2">Login</button>
            <button class="btn btn-primary w-100 py-2">Cadastrar</button>
        </form>
    </div>
</div>
</body>

</html>