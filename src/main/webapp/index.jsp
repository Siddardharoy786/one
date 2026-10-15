<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>NexusShop · friendly commerce</title>

  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" crossorigin="anonymous" />

  <style>
    /* ----- reset & base ----- */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }
    body {
      font-family: 'Inter', system-ui, sans-serif;
      background: #f7f8fc;
      color: #1b1c2b;
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }
    img {
      max-width: 100%;
      display: block;
    }
    button {
      font: inherit;
      border: none;
      background: none;
      cursor: pointer;
      color: inherit;
    }
    a {
      text-decoration: none;
      color: inherit;
    }
    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 20px;
    }

    /* ----- buttons ----- */
    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      padding: 12px 28px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 15px;
      transition: 0.2s ease;
      border: 2px solid transparent;
    }
    .btn-primary {
      background: #2f3b5c;
      color: #fff;
      border-color: #2f3b5c;
    }
    .btn-primary:hover {
      background: #1d263e;
      border-color: #1d263e;
      transform: translateY(-2px);
      box-shadow: 0 10px 24px rgba(47, 59, 92, 0.18);
    }
    .btn-soft {
      background: #eef0f5;
      color: #1b1c2b;
      border-color: transparent;
    }
    .btn-soft:hover {
      background: #dee1ea;
    }
    .btn-outline-light {
      background: transparent;
      color: #fff;
      border-color: rgba(255, 255, 255, 0.35);
    }
    .btn-outline-light:hover {
      background: rgba(255, 255, 255, 0.1);
      border-color: rgba(255, 255, 255, 0.6);
    }
    .btn-sm {
      padding: 8px 18px;
      font-size: 13px;
    }
    .btn-success {
      background: #2d8f7a;
      color: #fff;
      border-color: #2d8f7a;
    }
    .btn-success:hover {
      background: #1e705e;
      border-color: #1e705e;
    }

    /* ----- header ----- */
    header {
      background: rgba(255, 255, 255, 0.88);
      backdrop-filter: blur(12px);
      -webkit-backdrop-filter: blur(12px);
      border-bottom: 1px solid rgba(0, 0, 0, 0.04);
      position: sticky;
      top: 0;
      z-index: 99;
    }
    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 12px;
      padding: 12px 0;
      flex-wrap: wrap;
    }
    .brand {
      display: flex;
      align-items: center;
      gap: 8px;
      font-weight: 800;
      font-size: 22px;
      letter-spacing: -0.4px;
      color: #1b1c2b;
      flex-shrink: 0;
    }
    .brand i {
      color: #2f3b5c;
      font-size: 26px;
    }
    .brand span {
      color: #d46b5e;
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .icon-btn {
      width: 42px;
      height: 42px;
      display: grid;
      place-items: center;
      border-radius: 50%;
      color: #4f5370;
      font-size: 18px;
      transition: 0.2s;
      position: relative;
    }
    .icon-btn:hover {
      background: #eef0f5;
      color: #1b1c2b;
    }
    .cart-wrap {
      position: relative;
    }
    .cart-badge {
      position: absolute;
      top: -2px;
      right: -2px;
      background: #d46b5e;
      color: #fff;
      font-size: 11px;
      font-weight: 700;
      width: 20px;
      height: 20px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      border: 2px solid #fff;
    }
    .search-wrap {
      display: flex;
      align-items: center;
      background: #f0f2f7;
      border-radius: 60px;
      padding: 0 12px 0 18px;
      border: 2px solid transparent;
      transition: 0.2s;
      min-width: 200px;
    }
    .search-wrap:focus-within {
      border-color: #2f3b5c;
      background: #fff;
      box-shadow: 0 0 0 4px rgba(47, 59, 92, 0.08);
    }
    .search-wrap input {
      border: 0;
      background: transparent;
      outline: none;
      padding: 10px 0;
      width: 100%;
      font-size: 14px;
      color: #1b1c2b;
    }
    .search-wrap input::placeholder {
      color: #8d91aa;
    }
    .search-wrap button {
      padding: 8px 0 8px 10px;
      color: #6a6e8a;
      font-size: 15px;
    }
    .search-wrap button:hover {
      color: #2f3b5c;
    }

    .mobile-toggle {
      display: none;
      width: 42px;
      height: 42px;
      border-radius: 50%;
      background: #eef0f5;
      font-size: 20px;
      color: #1b1c2b;
    }
    .mobile-toggle:hover {
      background: #dee1ea;
    }

    #mobileMenu {
      display: none;
      background: #fff;
      padding: 14px 0 24px;
      border-top: 1px solid rgba(0, 0, 0, 0.04);
    }
    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 4px;
    }
    #mobileMenu ul li a {
      display: flex;
      align-items: center;
      gap: 12px;
      padding: 12px 16px;
      border-radius: 12px;
      font-weight: 500;
      color: #1b1c2b;
      transition: 0.2s;
    }
    #mobileMenu ul li a:hover {
      background: #f0f2f7;
    }
    #mobileMenu ul li a i {
      width: 22px;
      color: #6a6e8a;
    }

    /* ----- hero (soft) ----- */
    .hero-soft {
      background: linear-gradient(145deg, #eef1f9, #ffffff);
      border-radius: 32px;
      margin: 24px 20px 0;
      padding: 52px 40px;
      display: flex;
      align-items: center;
      flex-wrap: wrap;
      gap: 32px;
      box-shadow: 0 4px 20px rgba(0,0,0,0.02);
    }
    .hero-soft .text {
      flex: 1 1 300px;
    }
    .hero-soft .text .badge {
      display: inline-block;
      background: #d46b5e20;
      color: #d46b5e;
      font-weight: 600;
      font-size: 13px;
      padding: 4px 16px;
      border-radius: 60px;
      margin-bottom: 14px;
    }
    .hero-soft .text h1 {
      font-size: 40px;
      font-weight: 800;
      letter-spacing: -1px;
      line-height: 1.1;
      margin-bottom: 12px;
      color: #1b1c2b;
    }
    .hero-soft .text p {
      color: #4f5370;
      font-size: 17px;
      max-width: 480px;
      margin-bottom: 24px;
    }
    .hero-soft .actions {
      display: flex;
      flex-wrap: wrap;
      gap: 12px;
    }
    .hero-soft .visual {
      flex: 1 1 220px;
      display: flex;
      justify-content: center;
      align-items: center;
    }
    .hero-soft .visual img {
      width: 100%;
      max-width: 360px;
      border-radius: 24px;
      object-fit: cover;
      box-shadow: 0 20px 40px rgba(0,0,0,0.04);
    }

    /* ----- section ----- */
    .section {
      padding: 48px 0 24px;
    }
    .section-header {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 12px;
      margin-bottom: 28px;
    }
    .section-header h2 {
      font-size: 26px;
      font-weight: 700;
      letter-spacing: -0.3px;
    }
    .section-header .sub {
      color: #6a6e8a;
      font-size: 15px;
      margin-top: 2px;
    }
    .section-header .link {
      color: #2f3b5c;
      font-weight: 600;
      display: flex;
      align-items: center;
      gap: 6px;
      font-size: 14px;
      transition: 0.2s;
      white-space: nowrap;
    }
    .section-header .link:hover {
      gap: 12px;
      color: #1d263e;
    }

    /* categories */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(130px, 1fr));
      gap: 16px;
    }
    .cat-card {
      background: #fff;
      padding: 18px 8px;
      border-radius: 24px;
      text-align: center;
      box-shadow: 0 4px 12px rgba(0,0,0,0.02);
      border: 1px solid rgba(0,0,0,0.02);
      transition: 0.2s;
      cursor: default;
    }
    .cat-card:hover {
      transform: translateY(-4px);
      box-shadow: 0 12px 28px rgba(47,59,92,0.06);
      border-color: #d46b5e40;
    }
    .cat-card .icon {
      width: 52px;
      height: 52px;
      background: #f0f2f7;
      border-radius: 60px;
      display: grid;
      place-items: center;
      margin: 0 auto 10px;
      font-size: 22px;
      color: #2f3b5c;
      transition: 0.2s;
    }
    .cat-card:hover .icon {
      background: #2f3b5c;
      color: #fff;
    }
    .cat-card h4 {
      font-size: 14px;
      font-weight: 600;
    }
    .cat-card .count {
      font-size: 12px;
      color: #8d91aa;
      margin-top: 2px;
    }

    /* products */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(180px, 1fr));
      gap: 20px;
    }
    .product-card {
      background: #fff;
      border-radius: 24px;
      overflow: hidden;
      box-shadow: 0 4px 14px rgba(0,0,0,0.02);
      border: 1px solid rgba(0,0,0,0.02);
      transition: 0.25s;
      display: flex;
      flex-direction: column;
    }
    .product-card:hover {
      transform: translateY(-6px);
      box-shadow: 0 20px 40px rgba(47,59,92,0.06);
      border-color: #d46b5e30;
    }
    .product-card .img-wrap {
      background: #f7f8fc;
      aspect-ratio: 1/1;
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 12px;
      position: relative;
    }
    .product-card .img-wrap img {
      width: 100%;
      height: 100%;
      object-fit: contain;
      transition: 0.3s;
    }
    .product-card:hover .img-wrap img {
      transform: scale(1.03);
    }
    .product-card .badge {
      position: absolute;
      top: 10px;
      left: 10px;
      background: #2f3b5c;
      color: #fff;
      font-size: 11px;
      font-weight: 700;
      padding: 3px 12px;
      border-radius: 60px;
    }
    .product-card .badge.sale {
      background: #d46b5e;
    }
    .product-card .wish {
      position: absolute;
      top: 10px;
      right: 10px;
      width: 34px;
      height: 34px;
      background: rgba(255,255,255,0.85);
      border-radius: 50%;
      display: grid;
      place-items: center;
      color: #6a6e8a;
      transition: 0.2s;
      backdrop-filter: blur(4px);
    }
    .product-card .wish:hover {
      background: #fff;
      color: #d46b5e;
      transform: scale(1.08);
    }
    .product-card .body {
      padding: 14px 14px 10px;
      flex: 1;
      display: flex;
      flex-direction: column;
      gap: 4px;
    }
    .product-card .body .cat {
      font-size: 11px;
      color: #8d91aa;
      text-transform: uppercase;
      letter-spacing: 0.3px;
      font-weight: 600;
    }
    .product-card .body h5 {
      font-size: 14px;
      font-weight: 600;
      line-height: 1.3;
      display: -webkit-box;
      -webkit-line-clamp: 2;
      -webkit-box-orient: vertical;
      overflow: hidden;
    }
    .product-card .body .price {
      font-weight: 700;
      font-size: 17px;
      margin-top: 2px;
    }
    .product-card .body .old {
      color: #8d91aa;
      text-decoration: line-through;
      font-size: 13px;
      font-weight: 400;
      margin-left: 6px;
    }
    .product-card .body .stars {
      color: #f5b342;
      font-size: 13px;
      letter-spacing: 1px;
    }
    .product-card .body .stars span {
      color: #8d91aa;
      margin-left: 4px;
      font-weight: 400;
    }
    .product-card .footer {
      padding: 0 14px 14px;
    }
    .product-card .footer .add {
      width: 100%;
      padding: 10px;
      border-radius: 60px;
      background: #f0f2f7;
      font-weight: 600;
      font-size: 13px;
      transition: 0.2s;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      color: #1b1c2b;
    }
    .product-card .footer .add:hover {
      background: #2f3b5c;
      color: #fff;
    }
    .product-card .footer .add.added {
      background: #2d8f7a;
      color: #fff;
    }

    /* deal card */
    .deal-card {
      background: #fff;
      border-radius: 32px;
      display: flex;
      flex-wrap: wrap;
      overflow: hidden;
      box-shadow: 0 8px 28px rgba(0,0,0,0.02);
      border: 1px solid rgba(0,0,0,0.02);
    }
    .deal-card .img {
      flex: 1 1 200px;
      background: #f0f2f7;
      min-height: 200px;
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 20px;
    }
    .deal-card .img img {
      width: 100%;
      max-width: 280px;
      object-fit: contain;
    }
    .deal-card .content {
      flex: 2 1 280px;
      padding: 32px 34px;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .deal-card .content .tag {
      background: #f5b34220;
      color: #b8822e;
      font-weight: 700;
      font-size: 12px;
      padding: 4px 14px;
      border-radius: 60px;
      align-self: flex-start;
      margin-bottom: 8px;
    }
    .deal-card .content h3 {
      font-size: 26px;
      font-weight: 700;
    }
    .deal-card .content .desc {
      color: #4f5370;
      margin: 4px 0 10px;
    }
    .deal-card .content .big-price {
      font-size: 30px;
      font-weight: 800;
    }
    .deal-card .content .big-price .old {
      font-size: 19px;
      font-weight: 400;
      color: #8d91aa;
      text-decoration: line-through;
      margin-left: 10px;
    }
    .deal-card .content .stock {
      color: #4f5370;
      font-size: 14px;
      margin: 4px 0 12px;
    }
    .deal-card .content .stock strong {
      color: #d46b5e;
    }
    .timer-group {
      display: flex;
      gap: 12px;
      margin: 6px 0 16px;
    }
    .timer-box {
      background: #f0f2f7;
      border-radius: 16px;
      padding: 8px 14px;
      min-width: 60px;
      text-align: center;
    }
    .timer-box .num {
      font-size: 24px;
      font-weight: 700;
      line-height: 1.2;
    }
    .timer-box .label {
      font-size: 10px;
      text-transform: uppercase;
      color: #6a6e8a;
      letter-spacing: 0.3px;
    }

    /* testimonials */
    .testi-scroll {
      display: flex;
      gap: 18px;
      overflow-x: auto;
      padding: 4px 2px 12px;
      scroll-snap-type: x mandatory;
      -webkit-overflow-scrolling: touch;
    }
    .testi-scroll::-webkit-scrollbar {
      height: 4px;
    }
    .testi-scroll::-webkit-scrollbar-thumb {
      background: #d46b5e60;
      border-radius: 60px;
    }
    .testi-card {
      flex: 0 0 280px;
      background: #fff;
      border-radius: 24px;
      padding: 22px 24px;
      box-shadow: 0 4px 12px rgba(0,0,0,0.02);
      scroll-snap-align: start;
      border: 1px solid rgba(0,0,0,0.02);
    }
    .testi-card .stars {
      color: #f5b342;
      font-size: 15px;
      letter-spacing: 1px;
      margin-bottom: 8px;
    }
    .testi-card blockquote {
      font-size: 14px;
      line-height: 1.6;
      color: #1b1c2b;
      font-style: italic;
      margin-bottom: 12px;
    }
    .testi-card .author {
      display: flex;
      align-items: center;
      gap: 12px;
    }
    .testi-card .author img {
      width: 40px;
      height: 40px;
      border-radius: 50%;
      object-fit: cover;
      background: #eef0f5;
    }
    .testi-card .author .name {
      font-weight: 600;
      font-size: 14px;
    }
    .testi-card .author .role {
      font-size: 12px;
      color: #8d91aa;
    }

    /* newsletter */
    .newsletter-block {
      background: #2f3b5c;
      border-radius: 32px;
      padding: 40px 44px;
      color: #fff;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      gap: 24px;
    }
    .newsletter-block h3 {
      font-size: 24px;
      font-weight: 700;
    }
    .newsletter-block p {
      opacity: 0.75;
      font-size: 15px;
    }
    .newsletter-block form {
      display: flex;
      flex: 1;
      min-width: 240px;
      gap: 10px;
      flex-wrap: wrap;
    }
    .newsletter-block input {
      flex: 1;
      min-width: 160px;
      padding: 12px 20px;
      border-radius: 60px;
      border: 0;
      background: rgba(255,255,255,0.12);
      color: #fff;
      font-size: 14px;
      outline: 2px solid transparent;
      transition: 0.2s;
    }
    .newsletter-block input::placeholder {
      color: rgba(255,255,255,0.5);
    }
    .newsletter-block input:focus {
      outline-color: #d46b5e;
      background: rgba(255,255,255,0.18);
    }
    .newsletter-block .btn {
      background: #d46b5e;
      color: #fff;
      border-color: #d46b5e;
    }
    .newsletter-block .btn:hover {
      background: #b85447;
      border-color: #b85447;
    }
    #newsletterMsg {
      width: 100%;
      margin-top: 8px;
      font-size: 14px;
      opacity: 0.9;
    }

    /* footer */
    footer {
      padding: 40px 0 24px;
      border-top: 1px solid rgba(0,0,0,0.04);
      margin-top: 8px;
    }
    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 32px;
      margin-bottom: 28px;
    }
    .footer-grid .brand-col .brand {
      font-size: 20px;
      margin-bottom: 6px;
    }
    .footer-grid .brand-col p {
      color: #4f5370;
      font-size: 14px;
      max-width: 260px;
    }
    .footer-grid .brand-col .socials {
      display: flex;
      gap: 8px;
      margin-top: 12px;
    }
    .footer-grid .brand-col .socials a {
      width: 36px;
      height: 36px;
      border-radius: 50%;
      background: #f0f2f7;
      display: grid;
      place-items: center;
      color: #4f5370;
      transition: 0.2s;
      font-size: 14px;
    }
    .footer-grid .brand-col .socials a:hover {
      background: #2f3b5c;
      color: #fff;
    }
    .footer-grid .col h5 {
      font-weight: 700;
      font-size: 14px;
      margin-bottom: 10px;
    }
    .footer-grid .col ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 6px;
    }
    .footer-grid .col ul a {
      color: #4f5370;
      font-size: 14px;
      transition: 0.2s;
    }
    .footer-grid .col ul a:hover {
      color: #2f3b5c;
    }
    .footer-bottom {
      text-align: center;
      padding-top: 16px;
      border-top: 1px solid rgba(0,0,0,0.04);
      color: #8d91aa;
      font-size: 13px;
    }

    /* responsive */
    @media (max-width: 900px) {
      .footer-grid {
        grid-template-columns: 1fr 1fr;
      }
      .search-wrap {
        min-width: 140px;
      }
    }
    @media (max-width: 768px) {
      .mobile-toggle {
        display: grid;
        place-items: center;
      }
      nav.main-nav {
        display: none;
      }
      .hero-soft {
        padding: 32px 24px;
        margin: 16px 12px 0;
      }
      .hero-soft .text h1 {
        font-size: 30px;
      }
      .products-grid {
        grid-template-columns: repeat(auto-fill, minmax(150px, 1fr));
      }
      .categories-grid {
        grid-template-columns: repeat(auto-fill, minmax(100px, 1fr));
      }
      .deal-card .content {
        padding: 24px 20px;
      }
      .newsletter-block {
        padding: 28px 24px;
      }
      .header-inner {
        flex-wrap: nowrap;
      }
    }
    @media (max-width: 480px) {
      .hero-soft .text h1 {
        font-size: 26px;
      }
      .products-grid {
        grid-template-columns: 1fr 1fr;
        gap: 12px;
      }
      .container {
        padding: 0 12px;
      }
      .deal-card .content h3 {
        font-size: 20px;
      }
      .timer-box {
        min-width: 48px;
        padding: 6px 8px;
      }
      .timer-box .num {
        font-size: 18px;
      }
    }
  </style>
</head>
<body>

  <!-- header -->
  <header>
    <div class="container header-inner">
      <div style="display:flex;align-items:center;gap:8px;">
        <button class="mobile-toggle" id="mobileToggle" aria-label="menu">
          <i class="fas fa-bars"></i>
        </button>
        <a class="brand" href="#">
          <i class="fas fa-store-alt"></i>
          <span>Nexus<span>Shop</span></span>
        </a>
      </div>

      <nav class="main-nav" aria-label="main">
        <ul style="display:flex;gap:4px;list-style:none;align-items:center;">
          <li><a href="#" style="padding:8px 16px;border-radius:60px;font-weight:500;color:#4f5370;transition:0.2s;">Home</a></li>
          <li><a href="#categories" style="padding:8px 16px;border-radius:60px;font-weight:500;color:#4f5370;transition:0.2s;">Shop</a></li>
          <li><a href="#deals" style="padding:8px 16px;border-radius:60px;font-weight:500;color:#4f5370;transition:0.2s;">Deals</a></li>
          <li><a href="#testimonials" style="padding:8px 16px;border-radius:60px;font-weight:500;color:#4f5370;transition:0.2s;">Reviews</a></li>
        </ul>
      </nav>

      <div style="display:flex;align-items:center;gap:8px;">
        <div class="search-wrap">
          <input type="search" id="searchInput" placeholder="Search…" aria-label="search" />
          <button id="searchBtn"><i class="fas fa-search"></i></button>
        </div>
        <div class="header-actions">
          <button class="icon-btn" aria-label="account"><i class="far fa-user"></i></button>
          <button class="icon-btn" aria-label="wishlist"><i class="far fa-heart"></i></button>
          <div class="cart-wrap">
            <button class="icon-btn" id="cartBtn" aria-label="cart"><i class="fas fa-shopping-bag"></i></button>
            <span class="cart-badge" id="cartCount">0</span>
          </div>
        </div>
      </div>
    </div>

    <!-- mobile menu -->
    <div id="mobileMenu">
      <div class="container">
        <ul>
          <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
          <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
          <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
          <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
          <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
          <li><a href="#"><i class="far fa-user"></i> Account</a></li>
        </ul>
      </div>
    </div>
  </header>

  <main>
    <!-- hero -->
    <section class="hero-soft" aria-label="welcome">
      <div class="text">
        <div class="badge"><i class="fas fa-sparkles"></i> fresh finds</div>
        <h1>Quality essentials,<br />simpler shopping</h1>
        <p>Curated tech, fashion & lifestyle — with free delivery on your first order.</p>
        <div class="actions">
          <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Explore</button>
          <button class="btn btn-soft" id="exploreDeals"><i class="fas fa-clock"></i> Flash deals</button>
        </div>
      </div>
      <div class="visual">
        <img src="https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=400&q=80" alt="shopping mood" loading="lazy" />
      </div>
    </section>

    <!-- categories -->
    <section class="section" id="categories" aria-labelledby="catTitle">
      <div class="container">
        <div class="section-header">
          <div><h2 id="catTitle">Shop by category</h2><div class="sub">what are you looking for?</div></div>
          <a href="#" class="link">All <i class="fas fa-arrow-right"></i></a>
        </div>
        <div class="categories-grid" id="categoriesGrid"></div>
      </div>
    </section>

    <!-- products -->
    <section class="section" id="products" aria-labelledby="prodTitle">
      <div class="container">
        <div class="section-header">
          <div><h2 id="prodTitle">Trending now</h2><div class="sub">popular picks</div></div>
          <a href="#" class="link">View all <i class="fas fa-arrow-right"></i></a>
        </div>
        <div class="products-grid" id="productsGrid"></div>
      </div>
    </section>

    <!-- deal -->
    <section class="section" id="deals" aria-labelledby="dealTitle">
      <div class="container">
        <div class="section-header">
          <div><h2 id="dealTitle">⚡ flash deal</h2><div class="sub">limited stock</div></div>
        </div>
        <div class="deal-card">
          <div class="img">
            <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=400&q=80" alt="MacBook" loading="lazy" />
          </div>
          <div class="content">
            <span class="tag"><i class="fas fa-bolt"></i> limited offer</span>
            <h3>MacBook Air M2</h3>
            <p class="desc">Light, fast, and effortless. The M2 chip changes everything.</p>
            <div>
              <span class="big-price">$999 <span class="old">$1,199</span></span>
            </div>
            <p class="stock">Only <strong>12</strong> items left — don’t wait</p>
            <div class="timer-group" id="dealTimer">
              <div class="timer-box"><div class="num" id="dealDays">0</div><div class="label">days</div></div>
              <div class="timer-box"><div class="num" id="dealHours">00</div><div class="label">hrs</div></div>
              <div class="timer-box"><div class="num" id="dealMinutes">00</div><div class="label">min</div></div>
              <div class="timer-box"><div class="num" id="dealSeconds">00</div><div class="label">sec</div></div>
            </div>
            <button class="btn btn-primary" id="buyDeal"><i class="fas fa-cart-plus"></i> Add to cart</button>
          </div>
        </div>
      </div>
    </section>

    <!-- testimonials -->
    <section class="section" id="testimonials" aria-labelledby="testTitle">
      <div class="container">
        <div class="section-header">
          <div><h2 id="testTitle">Real voices</h2><div class="sub">what our customers say</div></div>
        </div>
        <div class="testi-scroll" id="testimonialsList"></div>
     
