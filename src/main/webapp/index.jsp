<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>NexusShop · modern e‑commerce</title>
  <!-- Google Fonts + Font Awesome (same as original, but enhanced) -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <style>
    /* ---------- DESIGN TOKENS (new UI palette / spacing) ---------- */
    :root {
      --bg: #fdfbf9;                /* warm off-white */
      --bg-card: #ffffff;
      --primary: #1e1e2f;           /* deep ink */
      --primary-light: #2e2e44;
      --accent: #c96e4b;            /* terracotta refined */
      --accent-soft: #f7e4dc;
      --accent-light: #efd9cf;
      --text: #1c1c28;
      --text-soft: #5e5e6e;
      --border: #ebe7e2;
      --shadow-sm: 0 10px 25px -5px rgba(0, 0, 0, 0.03), 0 8px 16px -6px rgba(0, 0, 0, 0.02);
      --shadow-hover: 0 25px 35px -10px rgba(0, 0, 0, 0.08), 0 10px 20px -6px rgba(0, 0, 0, 0.04);
      --radius: 20px;
      --radius-sm: 14px;
      --transition: all 0.25s cubic-bezier(0.2, 0, 0, 1);
    }

    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      background-color: var(--bg);
      color: var(--text);
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }

    /* ---------- LAYOUT & CONTAINER ---------- */
    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 24px;
    }

    /* ---------- HEADER / NAVIGATION (minimal + refined) ---------- */
    .header {
      padding: 20px 0 12px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 20px;
      border-bottom: 1px solid var(--border);
    }

    .logo {
      display: flex;
      align-items: center;
      gap: 10px;
      font-size: 1.7rem;
      font-weight: 800;
      letter-spacing: -0.03em;
      color: var(--primary);
      font-family: 'Playfair Display', serif;
    }

    .logo i {
      color: var(--accent);
      font-size: 1.9rem;
      transform: rotate(-3deg);
    }

    .logo span {
      color: var(--accent);
      font-weight: 700;
    }

    .nav-links {
      display: flex;
      align-items: center;
      gap: 32px;
      font-weight: 500;
      font-size: 0.95rem;
      color: var(--text-soft);
    }

    .nav-links a {
      text-decoration: none;
      color: inherit;
      transition: var(--transition);
      border-bottom: 2px solid transparent;
      padding-bottom: 3px;
    }

    .nav-links a:hover,
    .nav-links a.active {
      color: var(--primary);
      border-bottom-color: var(--accent);
    }

    .nav-icons {
      display: flex;
      align-items: center;
      gap: 24px;
      color: var(--text-soft);
      font-size: 1.2rem;
    }

    .nav-icons i {
      cursor: pointer;
      transition: var(--transition);
    }

    .nav-icons i:hover {
      color: var(--accent);
      transform: scale(1.05);
    }

    /* ---------- HERO SECTION (clean, airy, editorial) ---------- */
    .hero {
      display: grid;
      grid-template-columns: 1fr 0.9fr;
      align-items: center;
      gap: 40px;
      padding: 48px 0 36px;
    }

    .hero-content h1 {
      font-size: 3.3rem;
      font-weight: 800;
      line-height: 1.2;
      letter-spacing: -0.03em;
      color: var(--primary);
      margin-bottom: 20px;
    }

    .hero-content h1 i {
      color: var(--accent);
      font-style: normal;
    }

    .hero-content p {
      font-size: 1.1rem;
      color: var(--text-soft);
      max-width: 480px;
      margin-bottom: 32px;
      font-weight: 400;
    }

    .btn-group {
      display: flex;
      flex-wrap: wrap;
      gap: 16px;
      align-items: center;
    }

    .btn-primary {
      background: var(--primary);
      color: white;
      border: none;
      padding: 14px 36px;
      border-radius: 50px;
      font-weight: 600;
      font-size: 1rem;
      letter-spacing: -0.01em;
      cursor: pointer;
      transition: var(--transition);
      box-shadow: var(--shadow-sm);
      display: inline-flex;
      align-items: center;
      gap: 10px;
    }

    .btn-primary i {
      font-size: 0.9rem;
      transition: transform 0.2s;
    }

    .btn-primary:hover {
      background: var(--primary-light);
      transform: translateY(-2px);
      box-shadow: var(--shadow-hover);
    }

    .btn-primary:hover i {
      transform: translateX(4px);
    }

    .btn-secondary {
      background: transparent;
      border: 1.5px solid var(--border);
      padding: 14px 36px;
      border-radius: 50px;
      font-weight: 600;
      color: var(--primary);
      cursor: pointer;
      transition: var(--transition);
      display: inline-flex;
      align-items: center;
      gap: 8px;
    }

    .btn-secondary:hover {
      border-color: var(--accent);
      background: var(--accent-soft);
      transform: translateY(-2px);
    }

    .hero-visual {
      background: linear-gradient(145deg, var(--accent-soft), #fef7f3);
      border-radius: 48px 48px 48px 16px;
      padding: 28px 28px 0 28px;
      display: flex;
      justify-content: center;
      align-items: flex-end;
      min-height: 280px;
      box-shadow: var(--shadow-sm);
      position: relative;
      overflow: hidden;
    }

    .hero-visual i {
      font-size: 12rem;
      color: var(--accent);
      opacity: 0.25;
      transform: rotate(-5deg) translateY(10px);
      transition: var(--transition);
    }

    .hero-visual:hover i {
      opacity: 0.4;
      transform: rotate(0deg) translateY(0);
    }

    /* ---------- FEATURED CATEGORIES (soft pills) ---------- */
    .categories {
      display: flex;
      flex-wrap: wrap;
      gap: 12px;
      margin: 30px 0 18px;
      padding-bottom: 8px;
    }

    .cat-pill {
      background: white;
      border: 1px solid var(--border);
      padding: 10px 26px;
      border-radius: 40px;
      font-size: 0.9rem;
      font-weight: 500;
      color: var(--text-soft);
      transition: var(--transition);
      cursor: default;
      box-shadow: 0 2px 6px rgba(0,0,0,0.01);
    }

    .cat-pill i {
      margin-right: 8px;
      color: var(--accent);
      font-size: 0.85rem;
    }

    .cat-pill:hover {
      border-color: var(--accent);
      color: var(--primary);
      background: var(--accent-soft);
    }

    /* ---------- SECTION HEADER ---------- */
    .section-header {
      display: flex;
      align-items: baseline;
      justify-content: space-between;
      margin: 42px 0 22px;
    }

    .section-header h2 {
      font-size: 1.9rem;
      font-weight: 700;
      letter-spacing: -0.02em;
      color: var(--primary);
    }

    .section-header a {
      color: var(--text-soft);
      font-size: 0.95rem;
      text-decoration: none;
      font-weight: 500;
      display: flex;
      align-items: center;
      gap: 6px;
      transition: var(--transition);
    }

    .section-header a i {
      font-size: 0.8rem;
      transition: transform 0.2s;
    }

    .section-header a:hover {
      color: var(--accent);
    }

    .section-header a:hover i {
      transform: translateX(4px);
    }

    /* ---------- PRODUCT GRID (new card design, more breathing room) ---------- */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(240px, 1fr));
      gap: 30px;
      margin-bottom: 52px;
    }

    .product-card {
      background: var(--bg-card);
      border-radius: var(--radius);
      padding: 18px 16px 20px;
      transition: var(--transition);
      box-shadow: var(--shadow-sm);
      border: 1px solid var(--border);
      display: flex;
      flex-direction: column;
      position: relative;
    }

    .product-card:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-hover);
      border-color: var(--accent-light);
    }

    .badge {
      position: absolute;
      top: 16px;
      left: 16px;
      background: var(--accent);
      color: white;
      font-size: 0.7rem;
      font-weight: 700;
      padding: 5px 12px;
      border-radius: 40px;
      letter-spacing: 0.3px;
      text-transform: uppercase;
      z-index: 1;
    }

    .badge.new {
      background: #2b6e5e; /* deep green for 'new' */
    }

    .product-img {
      background: #f6f3f0;
      border-radius: var(--radius-sm);
      height: 180px;
      display: flex;
      align-items: center;
      justify-content: center;
      margin-bottom: 18px;
      transition: var(--transition);
      overflow: hidden;
    }

    .product-img i {
      font-size: 4rem;
      color: var(--accent);
      opacity: 0.7;
      transition: var(--transition);
    }

    .product-card:hover .product-img i {
      transform: scale(1.08);
      opacity: 0.95;
    }

    .product-title {
      font-size: 1.06rem;
      font-weight: 700;
      color: var(--primary);
      margin-bottom: 6px;
      letter-spacing: -0.01em;
    }

    .product-meta {
      display: flex;
      align-items: center;
      justify-content: space-between;
      margin-top: 6px;
    }

    .price {
      font-size: 1.35rem;
      font-weight: 800;
      color: var(--primary);
    }

    .price small {
      font-size: 0.85rem;
      font-weight: 500;
      color: var(--text-soft);
      text-decoration: line-through;
      margin-left: 8px;
    }

    .rating i {
      color: #f5b342;
      font-size: 0.8rem;
      margin-right: 2px;
    }

    .rating span {
      font-size: 0.8rem;
      color: var(--text-soft);
      margin-left: 6px;
    }

    .card-btn {
      margin-top: 18px;
      background: transparent;
      border: 1.5px solid var(--border);
      border-radius: 40px;
      padding: 10px 0;
      font-weight: 600;
      font-size: 0.9rem;
      color: var(--primary);
      cursor: pointer;
      transition: var(--transition);
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      width: 100%;
    }

    .card-btn i {
      font-size: 1rem;
      color: var(--accent);
      transition: var(--transition);
    }

    .card-btn:hover {
      background: var(--primary);
      border-color: var(--primary);
      color: white;
    }

    .card-btn:hover i {
      color: white;
      transform: scale(1.1);
    }

    /* ---------- PERKS / FOOTER BANNER ---------- */
    .perks {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      align-items: center;
      gap: 26px;
      background: var(--bg-card);
      border-radius: 60px;
      padding: 26px 42px;
      margin: 58px 0 40px;
      border: 1px solid var(--border);
      box-shadow: var(--shadow-sm);
    }

    .perk-item {
      display: flex;
      align-items: center;
      gap: 16px;
    }

    .perk-item i {
      font-size: 1.9rem;
      color: var(--accent);
      width: 44px;
      text-align: center;
    }

    .perk-item div strong {
      display: block;
      font-size: 1rem;
      font-weight: 700;
      color: var(--primary);
      letter-spacing: -0.01em;
    }

    .perk-item div span {
      font-size: 0.85rem;
      color: var(--text-soft);
    }

    /* ---------- FOOTER ---------- */
    .footer {
      border-top: 1px solid var(--border);
      padding: 28px 0 36px;
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      align-items: center;
      color: var(--text-soft);
      font-size: 0.9rem;
    }

    .footer-links {
      display: flex;
      gap: 28px;
      flex-wrap: wrap;
    }

    .footer-links a {
      text-decoration: none;
      color: var(--text-soft);
      transition: var(--transition);
    }

    .footer-links a:hover {
      color: var(--accent);
    }

    .social i {
      margin-left: 20px;
      font-size: 1.1rem;
      cursor: pointer;
      transition: var(--transition);
    }

    .social i:hover {
      color: var(--accent);
      transform: translateY(-2px);
    }

    /* ---------- RESPONSIVE ---------- */
    @media (max-width: 860px) {
      .hero {
        grid-template-columns: 1fr;
        gap: 30px;
        text-align: center;
        padding: 30px 0 20px;
      }
      .hero-content h1 {
        font-size: 2.5rem;
      }
      .hero-content p {
        margin-left: auto;
        margin-right: auto;
      }
      .btn-group {
        justify-content: center;
      }
      .hero-visual {
        min-height: 220px;
        border-radius: 40px 40px 40px 16px;
      }
      .hero-visual i {
        font-size: 8rem;
      }
      .section-header {
        flex-direction: column;
        align-items: flex-start;
        gap: 8px;
      }
      .perks {
        border-radius: 36px;
        padding: 24px 28px;
        justify-content: center;
      }
      .footer {
        flex-direction: column;
        gap: 16px;
        text-align: center;
      }
      .nav-links {
        display: none; /* compact view: hide text nav */
      }
    }

    @media (max-width: 520px) {
      .container {
        padding: 0 18px;
      }
      .header {
        padding: 16px 0 10px;
      }
      .product-grid {
        grid-template-columns: 1fr 1fr;
        gap: 16px;
      }
      .product-img {
        height: 130px;
      }
      .product-img i {
        font-size: 2.8rem;
      }
      .price {
        font-size: 1.1rem;
      }
      .perks {
        flex-direction: column;
        align-items: flex-start;
        border-radius: 28px;
        padding: 22px;
      }
      .perk-item {
        width: 100%;
      }
    }

    @media (max-width: 380px) {
      .product-grid {
        grid-template-columns: 1fr;
      }
    }

    /* little extra: subtle background texture */
    body::before {
      content: '';
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background-image: radial-gradient(circle at 20% 30%, rgba(224, 122, 95, 0.02) 0%, transparent 50%);
      pointer-events: none;
      z-index: 0;
    }

    main, header, footer, .container {
      position: relative;
      z-index: 1;
    }
  </style>
</head>
<body>
  <!-- header -->
  <header class="container header">
    <div class="logo">
      <i class="fas fa-cube"></i>
      Nexus<span>Shop</span>
    </div>
    <div class="nav-links">
      <a href="#" class="active">Home</a>
      <a href="#">Collections</a>
      <a href="#">New</a>
      <a href="#">Sale</a>
    </div>
    <div class="nav-icons">
      <i class="fas fa-search"></i>
      <i class="far fa-heart"></i>
      <i class="fas fa-shopping-bag"></i>
      <i class="far fa-user"></i>
    </div>
  </header>

  <main class="container">
    <!-- HERO (redesigned layout, fresh palette) -->
    <div class="hero">
      <div class="hero-content">
        <h1>Elevate your everyday <i>essentials</i>.</h1>
        <p>Discover curated pieces that blend comfort, quality, and timeless design. Made for the modern rhythm.</p>
        <div class="btn-group">
          <button class="btn-primary">Shop the collection <i class="fas fa-arrow-right"></i></button>
          <button class="btn-secondary"><i class="far fa-play-circle"></i> Lookbook</button>
        </div>
      </div>
      <div class="hero-visual">
        <i class="fas fa-couch"></i> <!-- changed icon to couch for lifestyle feel -->
      </div>
    </div>

    <!-- categories pills (new UI element) -->
    <div class="categories">
      <div class="cat-pill"><i class="fas fa-chair"></i> Furniture</div>
      <div class="cat-pill"><i class="fas fa-lamp"></i> Lighting</div>
      <div class="cat-pill"><i class="fas fa-rug"></i> Textiles</div>
      <div class="cat-pill"><i class="fas fa-box"></i> Storage</div>
      <div class="cat-pill"><i class="fas fa-mug-hot"></i> Kitchen</div>
      <div class="cat-pill"><i class="fas fa-leaf"></i> Decor</div>
    </div>

    <!-- Featured section header -->
    <div class="section-header">
      <h2>Trending now</h2>
      <a href="#">View all <i class="fas fa-chevron-right"></i></a>
    </div>

    <!-- Product grid (modern, airy cards) -->
    <div class="product-grid">
      <!-- product 1 -->
      <div class="product-card">
        <div class="badge">Bestseller</div>
        <div class="product-img">
          <i class="fas fa-chair"></i>
        </div>
        <div class="product-title">Linen Lounge Chair</div>
        <div class="product-meta">
          <div class="price">$249 <small>$349</small></div>
          <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i><span>4.7</span></div>
        </div>
        <button class="card-btn"><i class="fas fa-shopping-cart"></i> Add to cart</button>
      </div>
      <!-- product 2 -->
      <div class="product-card">
        <div class="badge new">New</div>
        <div class="product-img">
          <i class="fas fa-lamp"></i>
        </div>
        <div class="product-title">Arc Floor Lamp</div>
        <div class="product-meta">
          <div class="price">$189 <small>$229</small></div>
          <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="far fa-star"></i><span>4.5</span></div>
        </div>
        <button class="card-btn"><i class="fas fa-shopping-cart"></i> Add to cart</button>
      </div>
      <!-- product 3 -->
      <div class="product-card">
        <div class="product-img">
          <i class="fas fa-couch"></i>
        </div>
        <div class="product-title">Modular Sofa</div>
        <div class="product-meta">
          <div class="price">$1,299 <small>$1,599</small></div>
          <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><span>5.0</span></div>
        </div>
        <button class="card-btn"><i class="fas fa-shopping-cart"></i> Add to cart</button>
      </div>
      <!-- product 4 -->
      <div class="product-card">
        <div class="badge">Limited</div>
        <div class="product-img">
          <i class="fas fa-table"></i>
        </div>
        <div class="product-title">Oak Dining Table</div>
        <div class="product-meta">
          <div class="price">$799 <small>$949</small></div>
          <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i><span>4.8</span></div>
        </div>
        <button class="card-btn"><i class="fas fa-shopping-cart"></i> Add to cart</button>
      </div>
    </div>

    <!-- second row (still trending, but we keep same grid) -> adding more products for a fuller look -->
    <div class="section-header" style="margin-top: -8px;">
      <h2>New arrivals</h2>
      <a href="#">Browse <i class="fas fa-chevron-right"></i></a>
    </div>

    <div class="product-grid">
      <!-- product 5 -->
      <div class="product-card">
        <div class="badge new">New</div>
        <div class="product-img">
          <i class="fas fa-rug"></i>
        </div>
        <div class="product-title">Handwoven Jute Rug</div>
        <div class="product-meta">
          <div class="price">$129 <small>$179</small></div>
          <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="far fa-star"></i><span>4.3</span></div>
        </div>
        <button class="card-btn"><i class="fas fa-shopping-cart"></i> Add to cart</button>
      </div>
      <!-- product 6 -->
      <div class="product-card">
        <div class="product-img">
          <i class="fas fa-mug-hot"></i>
        </div>
        <div class="product-title">Ceramic Mug Set</div>
        <div class="product-meta">
          <div class="price">$49 <small>$69</small></div>
          <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><span>4.9</span></div>
        </div>
        <button class="card-btn"><i class="fas fa-shopping-cart"></i> Add to cart</button>
      </div>
      <!-- product 7 -->
      <div class="product-card">
        <div class="product-img">
          <i class="fas fa-mirror"></i> <!-- using mirror as decor icon -->
        </div>
        <div class="product-title">Round Wall Mirror</div>
        <div class="product-meta">
          <div class="price">$89 <small>$119</small></div>
          <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i><span>4.6</span></div>
        </div>
        <button class="card-btn"><i class="fas fa-shopping-cart"></i> Add to cart</button>
      </div>
      <!-- product 8 -->
      <div class="product-card">
        <div class="badge">Eco</div>
        <div class="product-img">
          <i class="fas fa-plant"></i> <!-- fa-plant might not exist? use fa-seedling instead -->
          <i class="fas fa-seedling" style="font-size:4rem; margin-left: -1rem;"></i>
        </div>
        <div class="product-title">Indoor Planter</div>
        <div class="product-meta">
          <div class="price">$39 <small>$59</small></div>
          <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="far fa-star"></i><span>4.4</span></div>
        </div>
        <button class="card-btn"><i class="fas fa-shopping-cart"></i> Add to cart</button>
      </div>
    </div>

    <!-- perks / banner (new UI block) -->
    <div class="perks">
      <div class="perk-item">
        <i class="fas fa-truck-fast"></i>
        <div><strong>Free shipping</strong><span>On orders over $75</span></div>
      </div>
      <div class="perk-item">
        <i class="fas fa-rotate-left"></i>
        <div><strong>30‑day returns</strong><span>No questions asked</span></div>
      </div>
      <div class="perk-item">
        <i class="fas fa-headset"></i>
        <div><strong>24/7 support</strong><span>Real humans, anytime</span></div>
      </div>
      <div class="perk-item">
        <i class="fas fa-shield"></i>
        <div><strong>Secure checkout</strong><span>Encrypted & safe</span></div>
      </div>
    </div>
  </main>

  <!-- footer -->
  <footer class="container footer">
    <div>© 2025 NexusShop — designed with warmth.</div>
    <div class="footer-links">
      <a href="#">Privacy</a>
      <a href="#">Terms</a>
      <a href="#">Shipping</a>
      <a href="#">Contact</a>
    </div>
    <div class="social">
      <i class="fab fa-instagram"></i>
      <i class="fab fa-pinterest"></i>
      <i class="fab fa-x-twitter"></i>
    </div>
  </footer>

  <!-- tiny script for demo (no functionality, just UI) -->
  <script>
    // optional: console log for smooth interaction
    console.log('NexusShop · modern e‑commerce UI ready');
  </script>
</body>
</html>
