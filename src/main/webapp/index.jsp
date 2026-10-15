<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Lumine — Curated Modern Living</title>

  <!-- Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght@9..144,400;9..144,500;9..144,600;9..144,700;9..144,800&family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
  <!-- Icons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />

  <style>
    /* ============== DESIGN TOKENS ============== */
    :root {
      /* Warm minimalist palette */
      --bg: #f7f4ef;
      --bg-alt: #fffefb;
      --surface: #ffffff;
      --surface-warm: #fbf8f3;
      --ink: #1a1a17;
      --ink-soft: #54524c;
      --ink-mute: #8b8880;
      --line: #e8e3da;
      --line-strong: #d8d2c5;

      /* Accent: sage + terracotta pair */
      --sage: #6b7f5e;
      --sage-soft: #e6e9df;
      --terra: #c26a4a;
      --terra-soft: #f4e2d8;

      /* Sizing */
      --r-sm: 8px;
      --r-md: 16px;
      --r-lg: 24px;
      --r-xl: 32px;
      --r-full: 999px;

      /* Shadows */
      --sh-soft: 0 1px 2px rgba(26,26,23,0.04), 0 4px 12px rgba(26,26,23,0.03);
      --sh-mid: 0 4px 12px rgba(26,26,23,0.05), 0 12px 28px rgba(26,26,23,0.06);
      --sh-lg: 0 12px 32px rgba(26,26,23,0.08), 0 32px 60px rgba(26,26,23,0.08);

      /* Motion */
      --ease: cubic-bezier(0.22, 1, 0.36, 1);
    }

    /* ============== RESET ============== */
    *, *::before, *::after { box-sizing: border-box; }
    * { margin: 0; padding: 0; }

    html { scroll-behavior: smooth; }

    body {
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      font-size: 15px;
      line-height: 1.55;
      color: var(--ink);
      background: var(--bg);
      -webkit-font-smoothing: antialiased;
      text-rendering: optimizeLegibility;
      overflow-x: hidden;
    }

    img, svg { display: block; max-width: 100%; }
    button, input { font: inherit; color: inherit; }
    button { background: none; border: none; cursor: pointer; }
    a { color: inherit; text-decoration: none; }
    ul { list-style: none; }

    /* ============== SHARED ============== */
    .wrap {
      max-width: 1320px;
      margin: 0 auto;
      padding: 0 32px;
    }

    .eyebrow {
      font-size: 11px;
      letter-spacing: 0.14em;
      text-transform: uppercase;
      font-weight: 600;
      color: var(--ink-mute);
      display: inline-flex;
      align-items: center;
      gap: 10px;
    }
    .eyebrow::before {
      content: '';
      width: 20px;
      height: 1px;
      background: var(--ink-mute);
    }

    .serif {
      font-family: 'Fraunces', Georgia, serif;
      font-optical-sizing: auto;
      letter-spacing: -0.02em;
    }

    /* ============== TICKER ============== */
    .ticker {
      background: var(--ink);
      color: #f7f4ef;
      font-size: 12px;
      letter-spacing: 0.08em;
      text-transform: uppercase;
      padding: 10px 0;
      overflow: hidden;
    }
    .ticker__track {
      display: flex;
      gap: 56px;
      animation: scroll 40s linear infinite;
      white-space: nowrap;
      width: max-content;
    }
    .ticker__track span {
      display: inline-flex;
      align-items: center;
      gap: 10px;
    }
    .ticker__track span::after {
      content: '✦';
      color: var(--terra);
      font-size: 10px;
    }
    @keyframes scroll {
      from { transform: translateX(0); }
      to   { transform: translateX(-50%); }
    }

    /* ============== NAV ============== */
    .nav {
      position: sticky;
      top: 0;
      z-index: 100;
      background: rgba(247, 244, 239, 0.85);
      backdrop-filter: blur(16px);
      -webkit-backdrop-filter: blur(16px);
      border-bottom: 1px solid var(--line);
    }
    .nav__inner {
      display: grid;
      grid-template-columns: auto 1fr auto;
      align-items: center;
      gap: 40px;
      padding: 18px 0;
    }
    .brand {
      display: flex;
      align-items: baseline;
      gap: 2px;
      font-family: 'Fraunces', serif;
      font-size: 24px;
      font-weight: 700;
      letter-spacing: -0.03em;
      color: var(--ink);
    }
    .brand em {
      font-style: italic;
      color: var(--terra);
      font-weight: 500;
    }
    .brand__dot {
      width: 6px;
      height: 6px;
      border-radius: 50%;
      background: var(--sage);
      margin-left: 4px;
      transform: translateY(-2px);
    }

    .nav__menu {
      display: flex;
      gap: 8px;
      justify-content: center;
    }
    .nav__menu a {
      padding: 8px 16px;
      font-size: 14px;
      font-weight: 500;
      color: var(--ink-soft);
      border-radius: var(--r-full);
      transition: all 0.25s var(--ease);
      position: relative;
    }
    .nav__menu a:hover {
      color: var(--ink);
      background: var(--surface-warm);
    }
    .nav__menu a.is-active {
      color: var(--ink);
      background: var(--sage-soft);
    }

    .nav__tools {
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .icon-btn {
      width: 42px;
      height: 42px;
      border-radius: var(--r-full);
      display: inline-flex;
      align-items: center;
      justify-content: center;
      color: var(--ink);
      font-size: 15px;
      position: relative;
      transition: all 0.25s var(--ease);
    }
    .icon-btn:hover {
      background: var(--surface-warm);
      color: var(--terra);
    }
    .icon-btn .dot {
      position: absolute;
      top: 9px;
      right: 10px;
      width: 7px;
      height: 7px;
      border-radius: 50%;
      background: var(--terra);
      border: 2px solid var(--bg);
    }

    /* ============== HERO ============== */
    .hero {
      padding: 56px 0 40px;
      position: relative;
    }
    .hero__grid {
      display: grid;
      grid-template-columns: 1.05fr 1fr;
      gap: 72px;
      align-items: center;
    }

    .hero__tag {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      background: var(--surface);
      border: 1px solid var(--line);
      padding: 8px 14px 8px 10px;
      border-radius: var(--r-full);
      font-size: 12.5px;
      font-weight: 500;
      color: var(--ink-soft);
      margin-bottom: 28px;
      box-shadow: var(--sh-soft);
    }
    .hero__tag b {
      background: var(--sage);
      color: #fff;
      font-size: 10px;
      padding: 3px 8px;
      border-radius: var(--r-full);
      letter-spacing: 0.06em;
      text-transform: uppercase;
      font-weight: 600;
    }

    .hero h1 {
      font-family: 'Fraunces', serif;
      font-weight: 500;
      font-size: clamp(40px, 5.2vw, 74px);
      line-height: 1.02;
      letter-spacing: -0.035em;
      color: var(--ink);
      margin-bottom: 24px;
    }
    .hero h1 em {
      font-style: italic;
      font-weight: 400;
      color: var(--terra);
    }
    .hero h1 .u {
      position: relative;
      display: inline-block;
    }
    .hero h1 .u::after {
      content: '';
      position: absolute;
      left: 0;
      right: 0;
      bottom: 6px;
      height: 10px;
      background: var(--sage-soft);
      z-index: -1;
      border-radius: 2px;
    }

    .hero__lede {
      font-size: 17px;
      line-height: 1.6;
      color: var(--ink-soft);
      max-width: 460px;
      margin-bottom: 36px;
    }

    .hero__actions {
      display: flex;
      gap: 14px;
      align-items: center;
      flex-wrap: wrap;
    }

    .btn {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      padding: 15px 26px;
      border-radius: var(--r-full);
      font-size: 14px;
      font-weight: 600;
      letter-spacing: -0.005em;
      transition: all 0.28s var(--ease);
      cursor: pointer;
      white-space: nowrap;
    }
    .btn--primary {
      background: var(--ink);
      color: var(--bg-alt);
    }
    .btn--primary:hover {
      background: var(--terra);
      transform: translateY(-2px);
      box-shadow: 0 14px 28px -10px rgba(194, 106, 74, 0.5);
    }
    .btn--primary i { transition: transform 0.28s var(--ease); }
    .btn--primary:hover i { transform: translateX(4px); }

    .btn--ghost {
      background: transparent;
      color: var(--ink);
      border: 1px solid var(--line-strong);
    }
    .btn--ghost:hover {
      border-color: var(--ink);
      background: var(--surface);
    }

    .hero__meta {
      display: flex;
      align-items: center;
      gap: 20px;
      margin-top: 44px;
      padding-top: 28px;
      border-top: 1px solid var(--line);
    }
    .avatars {
      display: flex;
    }
    .avatars span {
      width: 34px;
      height: 34px;
      border-radius: 50%;
      border: 2px solid var(--bg);
      margin-left: -10px;
      display: grid;
      place-items: center;
      font-size: 11px;
      font-weight: 700;
      color: #fff;
    }
    .avatars span:first-child { margin-left: 0; }
    .avatars span:nth-child(1) { background: #6b7f5e; }
    .avatars span:nth-child(2) { background: #c26a4a; }
    .avatars span:nth-child(3) { background: #8a7ab8; }
    .avatars span:nth-child(4) { background: #d4a24c; }
    .hero__meta p {
      font-size: 13px;
      color: var(--ink-soft);
      line-height: 1.4;
    }
    .hero__meta strong { color: var(--ink); font-weight: 600; }

    /* Hero Visual */
    .hero__visual {
      position: relative;
      aspect-ratio: 4 / 4.6;
    }
    .hero__img {
      position: absolute;
      inset: 0;
      border-radius: var(--r-xl);
      background:
        linear-gradient(155deg, #ede4d5 0%, #e0cdb6 55%, #c9a684 100%);
      overflow: hidden;
      box-shadow: var(--sh-lg);
    }
    /* Decorative shapes inside hero image */
    .hero__img::before {
      content: '';
      position: absolute;
      width: 68%;
      aspect-ratio: 1;
      border-radius: 50%;
      background: radial-gradient(circle at 30% 30%, #f4e6d0, #d9b48c);
      bottom: -18%;
      left: -14%;
      box-shadow: inset -20px -30px 60px rgba(120, 80, 40, 0.15);
    }
    .hero__img::after {
      content: '';
      position: absolute;
      width: 55%;
      aspect-ratio: 1;
      border-radius: 50% 50% 46% 54% / 54% 46% 54% 46%;
      background: linear-gradient(180deg, #6b7f5e, #4d5f43);
      top: 8%;
      right: -8%;
      box-shadow: inset -20px -20px 60px rgba(0, 0, 0, 0.2);
    }
    .hero__pill {
      position: absolute;
      background: var(--surface);
      border-radius: var(--r-lg);
      padding: 14px 18px;
      box-shadow: var(--sh-mid);
      display: flex;
      align-items: center;
      gap: 12px;
      z-index: 2;
    }
    .hero__pill i {
      width: 36px;
      height: 36px;
      border-radius: 10px;
      display: grid;
      place-items: center;
      font-size: 14px;
    }
    .hero__pill strong {
      display: block;
      font-size: 13px;
      font-weight: 600;
      color: var(--ink);
      line-height: 1.2;
    }
    .hero__pill small {
      font-size: 11px;
      color: var(--ink-mute);
    }
    .hero__pill--tl {
      top: 24px;
      left: -22px;
      animation: float 5s ease-in-out infinite;
    }
    .hero__pill--tl i { background: var(--sage-soft); color: var(--sage); }

    .hero__pill--br {
      bottom: 36px;
      right: -22px;
      animation: float 5s ease-in-out infinite;
      animation-delay: 2.4s;
    }
    .hero__pill--br i { background: var(--terra-soft); color: var(--terra); }

    @keyframes float {
      0%, 100% { transform: translateY(0); }
      50% { transform: translateY(-10px); }
    }

    /* ============== MARQUEE / TRUST ============== */
    .trust {
      display: flex;
      justify-content: space-between;
      align-items: center;
      gap: 32px;
      padding: 32px 0;
      border-top: 1px solid var(--line);
      border-bottom: 1px solid var(--line);
      flex-wrap: wrap;
    }
    .trust__item {
      display: flex;
      align-items: center;
      gap: 12px;
      font-size: 13px;
      color: var(--ink-soft);
      font-weight: 500;
    }
    .trust__item i {
      font-size: 16px;
      color: var(--sage);
    }

    /* ============== SECTION HEAD ============== */
    .sec-head {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      gap: 32px;
      margin-bottom: 40px;
      flex-wrap: wrap;
    }
    .sec-head__title h2 {
      font-family: 'Fraunces', serif;
      font-weight: 500;
      font-size: clamp(32px, 3.6vw, 46px);
      line-height: 1.05;
      letter-spacing: -0.03em;
      color: var(--ink);
      margin-top: 12px;
    }
    .sec-head__title h2 em {
      font-style: italic;
      color: var(--terra);
      font-weight: 400;
    }
    .sec-head__filters {
      display: flex;
      gap: 6px;
      flex-wrap: wrap;
    }
    .chip {
      padding: 9px 18px;
      font-size: 13px;
      font-weight: 500;
      color: var(--ink-soft);
      border: 1px solid var(--line-strong);
      border-radius: var(--r-full);
      background: transparent;
      transition: all 0.25s var(--ease);
    }
    .chip:hover {
      color: var(--ink);
      border-color: var(--ink);
    }
    .chip.is-active {
      background: var(--ink);
      color: var(--bg-alt);
      border-color: var(--ink);
    }

    /* ============== PRODUCTS ============== */
    .section-products {
      padding: 72px 0 24px;
    }
    .grid-products {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 28px 24px;
    }

    .card {
      background: var(--surface);
      border-radius: var(--r-lg);
      overflow: hidden;
      display: flex;
      flex-direction: column;
      transition: all 0.35s var(--ease);
      position: relative;
      border: 1px solid transparent;
    }
    .card:hover {
      transform: translateY(-6px);
      border-color: var(--line);
      box-shadow: var(--sh-mid);
    }

    .card__media {
      position: relative;
      aspect-ratio: 1 / 1.05;
      overflow: hidden;
      background: var(--surface-warm);
      display: flex;
      align-items: center;
      justify-content: center;
    }
    /* product visuals via CSS gradients */
    .card__media::before {
      content: '';
      position: absolute;
      inset: 0;
      transition: transform 0.6s var(--ease);
    }
    .card:hover .card__media::before {
      transform: scale(1.06);
    }
    .card__media .art {
      position: relative;
      z-index: 2;
      font-size: 72px;
      color: rgba(255, 255, 255, 0.9);
      text-shadow: 0 8px 24px rgba(0, 0, 0, 0.18);
      transition: transform 0.6s var(--ease);
    }
    .card:hover .card__media .art {
      transform: scale(1.08) rotate(-3deg);
    }

    /* Gradient variations */
    .art--1::before { background: linear-gradient(135deg, #d4c2a8, #a88a6a); }
    .art--2::before { background: linear-gradient(135deg, #a8b89a, #6b7f5e); }
    .art--3::before { background: linear-gradient(135deg, #e6b29a, #c26a4a); }
    .art--4::before { background: linear-gradient(135deg, #c2b8d4, #8a7ab8); }
    .art--5::before { background: linear-gradient(135deg, #e0c99a, #b89a4a); }
    .art--6::before { background: linear-gradient(135deg, #a8c2c2, #5e8a8a); }
    .art--7::before { background: linear-gradient(135deg, #d4a8a8, #a85e5e); }
    .art--8::before { background: linear-gradient(135deg, #b8b8a8, #7a7a68); }

    .card__badge {
      position: absolute;
      top: 14px;
      left: 14px;
      z-index: 3;
      background: rgba(255, 255, 255, 0.95);
      backdrop-filter: blur(6px);
      color: var(--ink);
      font-size: 10.5px;
      font-weight: 600;
      letter-spacing: 0.08em;
      text-transform: uppercase;
      padding: 6px 12px;
      border-radius: var(--r-full);
    }
    .card__badge--sale { background: var(--terra); color: #fff; }
    .card__badge--new { background: var(--sage); color: #fff; }

    .card__wish {
      position: absolute;
      top: 14px;
      right: 14px;
      z-index: 3;
      width: 36px;
      height: 36px;
      border-radius: 50%;
      background: rgba(255, 255, 255, 0.95);
      backdrop-filter: blur(6px);
      display: grid;
      place-items: center;
      font-size: 13px;
      color: var(--ink);
      opacity: 0;
      transform: translateY(-4px);
      transition: all 0.3s var(--ease);
    }
    .card:hover .card__wish {
      opacity: 1;
      transform: translateY(0);
    }
    .card__wish:hover { color: var(--terra); }

    .card__body {
      padding: 18px 20px 20px;
      display: flex;
      flex-direction: column;
      gap: 12px;
      flex-grow: 1;
    }
    .card__cat {
      font-size: 11px;
      letter-spacing: 0.1em;
      text-transform: uppercase;
      color: var(--ink-mute);
      font-weight: 600;
    }
    .card__title {
      font-family: 'Fraunces', serif;
      font-weight: 500;
      font-size: 19px;
      line-height: 1.2;
      letter-spacing: -0.015em;
      color: var(--ink);
    }
    .card__rating {
      display: flex;
      align-items: center;
      gap: 6px;
      font-size: 12px;
      color: var(--ink-soft);
    }
    .card__rating .stars {
      color: #d99a3a;
      font-size: 11px;
      letter-spacing: -1px;
    }

    .card__foot {
      display: flex;
      align-items: center;
      justify-content: space-between;
      margin-top: auto;
      padding-top: 8px;
    }
    .card__price {
      display: flex;
      align-items: baseline;
      gap: 8px;
    }
    .card__price b {
      font-size: 18px;
      font-weight: 700;
      letter-spacing: -0.02em;
      color: var(--ink);
    }
    .card__price del {
      font-size: 13px;
      color: var(--ink-mute);
      font-weight: 500;
    }

    .card__add {
      width: 38px;
      height: 38px;
      border-radius: 50%;
      background: var(--ink);
      color: #fff;
      display: grid;
      place-items: center;
      font-size: 13px;
      transition: all 0.28s var(--ease);
    }
    .card__add:hover {
      background: var(--terra);
      transform: rotate(90deg);
    }

    /* ============== EDITORIAL FEATURE ============== */
    .feature {
      margin: 88px 0;
      background: var(--ink);
      color: var(--bg-alt);
      border-radius: var(--r-xl);
      padding: 72px 64px;
      position: relative;
      overflow: hidden;
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 60px;
      align-items: center;
    }
    .feature::before {
      content: '';
      position: absolute;
      width: 500px;
      height: 500px;
      border-radius: 50%;
      background: radial-gradient(circle, rgba(194, 106, 74, 0.35), transparent 70%);
      top: -200px;
      right: -150px;
    }
    .feature::after {
      content: '';
      position: absolute;
      width: 380px;
      height: 380px;
      border-radius: 50%;
      background: radial-gradient(circle, rgba(107, 127, 94, 0.4), transparent 70%);
      bottom: -180px;
      left: -100px;
    }
    .feature__content { position: relative; z-index: 2; }
    .feature__content .eyebrow {
      color: rgba(255, 255, 255, 0.55);
    }
    .feature__content .eyebrow::before { background: rgba(255, 255, 255, 0.55); }
    .feature__content h2 {
      font-family: 'Fraunces', serif;
      font-weight: 500;
      font-size: clamp(32px, 4vw, 52px);
      line-height: 1.05;
      letter-spacing: -0.03em;
      margin: 18px 0 24px;
    }
    .feature__content h2 em {
      font-style: italic;
      color: #e8b89a;
      font-weight: 400;
    }
    .feature__content p {
      font-size: 16px;
      color: rgba(255, 255, 255, 0.7);
      line-height: 1.65;
      margin-bottom: 32px;
      max-width: 420px;
    }
    .feature__stats {
      position: relative;
      z-index: 2;
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 20px;
    }
    .stat {
      background: rgba(255, 255, 255, 0.06);
      border: 1px solid rgba(255, 255, 255, 0.1);
      border-radius: var(--r-md);
      padding: 24px 22px;
      backdrop-filter: blur(8px);
      transition: all 0.3s var(--ease);
    }
    .stat:hover {
      background: rgba(255, 255, 255, 0.1);
      transform: translateY(-3px);
    }
    .stat b {
      display: block;
      font-family: 'Fraunces', serif;
      font-weight: 500;
      font-size: 34px;
      letter-spacing: -0.03em;
      color: #fff;
      margin-bottom: 4px;
    }
    .stat span {
      font-size: 12.5px;
      color: rgba(255, 255, 255, 0.6);
      line-height: 1.4;
    }

    /* ============== NEWSLETTER ============== */
    .newsletter {
      padding: 24px 0 88px;
      text-align: center;
    }
    .newsletter__box {
      max-width: 620px;
      margin: 0 auto;
    }
    .newsletter h2 {
      font-family: 'Fraunces', serif;
      font-weight: 500;
      font-size: clamp(30px, 3.6vw, 44px);
      line-height: 1.1;
      letter-spacing: -0.03em;
      margin: 16px 0 16px;
    }
    .newsletter h2 em {
      font-style: italic;
      color: var(--terra);
      font-weight: 400;
    }
    .newsletter p {
      color: var(--ink-soft);
      font-size: 15px;
      margin-bottom: 32px;
    }
    .newsletter__form {
      display: flex;
      gap: 8px;
      background: var(--surface);
      border: 1px solid var(--line);
      padding: 6px 6px 6px 20px;
      border-radius: var(--r-full);
      box-shadow: var(--sh-soft);
      max-width: 480px;
      margin: 0 auto;
      transition: all 0.3s var(--ease);
    }
    .newsletter__form:focus-within {
      border-color: var(--sage);
      box-shadow: 0 0 0 4px var(--sage-soft);
    }
    .newsletter__form input {
      flex: 1;
      border: none;
      outline: none;
      background: transparent;
      font-size: 14.5px;
      color: var(--ink);
      min-width: 0;
    }
    .newsletter__form input::placeholder { color: var(--ink-mute); }

    /* ============== FOOTER ============== */
    .footer {
      background: var(--surface-warm);
      border-top: 1px solid var(--line);
      padding: 72px 0 32px;
    }
    .footer__grid {
      display: grid;
      grid-template-columns: 1.6fr 1fr 1fr 1fr;
      gap: 56px;
      margin-bottom: 60px;
    }
    .footer__brand p {
      color: var(--ink-soft);
      font-size: 14px;
      line-height: 1.65;
      margin: 16px 0 24px;
      max-width: 320px;
    }
    .footer h4 {
      font-family: 'Fraunces', serif;
      font-weight: 500;
      font-size: 15px;
      letter-spacing: -0.01em;
      color: var(--ink);
      margin-bottom: 20px;
    }
    .footer ul li { margin-bottom: 12px; }
    .footer ul a {
      font-size: 13.5px;
      color: var(--ink-soft);
      transition: color 0.25s var(--ease);
    }
    .footer ul a:hover { color: var(--terra); }

    .footer__social {
      display: flex;
      gap: 8px;
    }
    .footer__social a {
      width: 38px;
      height: 38px;
      border-radius: 50%;
      border: 1px solid var(--line-strong);
      display: grid;
      place-items: center;
      font-size: 13px;
      color: var(--ink);
      transition: all 0.25s var(--ease);
    }
    .footer__social a:hover {
      background: var(--ink);
      color: var(--bg-alt);
      border-color: var(--ink);
      transform: translateY(-2px);
    }

    .footer__bottom {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding-top: 28px;
      border-top: 1px solid var(--line);
      font-size: 12.5px;
      color: var(--ink-mute);
      flex-wrap: wrap;
      gap: 16px;
    }
    .footer__bottom-links {
      display: flex;
      gap: 24px;
    }
    .footer__bottom-links a:hover { color: var(--ink); }

    /* ============== RESPONSIVE ============== */
    @media (max-width: 1080px) {
      .hero__grid { gap: 48px; }
      .grid-products { grid-template-columns: repeat(3, 1fr); }
      .feature { padding: 56px 44px; }
      .footer__grid { grid-template-columns: 1.4fr 1fr 1fr; }
      .footer__grid > div:last-child { display: none; }
    }

    @media (max-width: 860px) {
      .wrap { padding: 0 24px; }
      .nav__menu { display: none; }
      .nav__inner { grid-template-columns: auto auto; justify-content: space-between; }
      .hero { padding: 40px 0 24px; }
      .hero__grid { grid-template-columns: 1fr; gap: 48px; }
      .hero__visual { max-width: 520px; margin: 0 auto; width: 100%; }
      .grid-products { grid-template-columns: repeat(2, 1fr); gap: 20px; }
      .feature { grid-template-columns: 1fr; padding: 44px 32px; gap: 40px; }
      .feature__stats { grid-template-columns: repeat(2, 1fr); }
      .footer__grid { grid-template-columns: 1fr 1fr; gap: 40px; }
      .footer__brand { grid-column: 1 / -1; }
    }

    @media (max-width: 560px) {
      .wrap { padding: 0 18px; }
      .hero h1 { font-size: 40px; }
      .hero__meta { flex-wrap: wrap; }
      .hero__pill--tl { left: -10px; }
      .hero__pill--br { right: -10px; }
      .trust { justify-content: center; }
      .grid-products { grid-template-columns: 1fr; }
      .sec-head { flex-direction: column; align-items: flex-start; }
      .feature { padding: 36px 24px; }
      .feature__stats { grid-template-columns: 1fr; }
      .footer__grid { grid-template-columns: 1fr; }
      .footer__bottom { justify-content: center; text-align: center; }
      .newsletter__form {
        flex-direction: column;
        padding: 12px;
        border-radius: var(--r-lg);
      }
      .newsletter__form input { padding: 10px 8px; text-align: center; }
      .newsletter__form .btn { width: 100%; justify-content: center; }
    }

    /* Focus visible */
    :focus-visible {
      outline: 2px solid var(--terra);
      outline-offset: 3px;
      border-radius: 4px;
    }
  </style>
</head>
<body>

  <!-- ============ TICKER ============ -->
  <div class="ticker">
    <div class
