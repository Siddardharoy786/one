<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>AURA — Objects of Quiet Luxury</title>

  <!-- Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Instrument+Serif:ital@0;1&family=Geist:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
  <!-- Icons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />

  <style>
    /* ============================================================
       DESIGN SYSTEM — Bold Editorial
    ============================================================ */
    :root {
      /* Core palette */
      --ink:        #0e0e0d;
      --ink-2:      #1a1a18;
      --paper:      #f4f1ea;
      --paper-2:    #ece7dc;
      --cream:      #faf7f1;
      --bone:       #e4ddcf;

      /* Accents */
      --lime:       #d4f24a;
      --lime-dark:  #b8d43a;
      --clay:       #c96e4b;
      --clay-soft:  #e8c4b0;
      --moss:       #5e7054;
      --moss-soft:  #d6ddc9;
      --plum:       #4a2f4a;
      --plum-soft:  #d4c2d4;

      /* Text */
      --t-1:        #0e0e0d;
      --t-2:        #5c5a54;
      --t-3:        #8b877e;
      --t-inv:      #f4f1ea;
      --t-inv-2:    rgba(244, 241, 234, 0.65);
      --t-inv-3:    rgba(244, 241, 234, 0.4);

      /* Borders */
      --line:       #e0d9cb;
      --line-dark:  rgba(244, 241, 234, 0.12);

      /* Radii */
      --r-xs: 6px;
      --r-sm: 12px;
      --r-md: 20px;
      --r-lg: 28px;
      --r-xl: 40px;
      --r-full: 999px;

      /* Shadows */
      --sh-1: 0 1px 2px rgba(14,14,13,0.04), 0 8px 24px rgba(14,14,13,0.05);
      --sh-2: 0 8px 24px rgba(14,14,13,0.08), 0 24px 56px rgba(14,14,13,0.08);
      --sh-3: 0 20px 48px rgba(14,14,13,0.15), 0 48px 96px rgba(14,14,13,0.12);

      --ease: cubic-bezier(0.22, 1, 0.36, 1);
    }

    *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }
    html { scroll-behavior: smooth; -webkit-text-size-adjust: 100%; }

    body {
      font-family: 'Geist', -apple-system, BlinkMacSystemFont, system-ui, sans-serif;
      font-size: 15.5px;
      line-height: 1.55;
      color: var(--t-1);
      background: var(--paper);
      -webkit-font-smoothing: antialiased;
      -moz-osx-font-smoothing: grayscale;
      overflow-x: hidden;
    }

    a { color: inherit; text-decoration: none; }
    button { font: inherit; color: inherit; background: none; border: none; cursor: pointer; }
    ul { list-style: none; }
    img, svg { display: block; max-width: 100%; }

    .serif { font-family: 'Instrument Serif', Georgia, serif; font-weight: 400; letter-spacing: -0.01em; }
    .serif em { font-style: italic; }

    .wrap {
      max-width: 1440px;
      margin: 0 auto;
      padding: 0 40px;
    }

    /* ============================================================
       TOP BAR
    ============================================================ */
    .topbar {
      background: var(--ink);
      color: var(--t-inv);
      font-size: 11.5px;
      letter-spacing: 0.14em;
      text-transform: uppercase;
      font-weight: 500;
      padding: 11px 0;
      overflow: hidden;
      position: relative;
    }
    .topbar__track {
      display: flex;
      gap: 48px;
      animation: slide 45s linear infinite;
      white-space: nowrap;
      width: max-content;
    }
    .topbar__track > * {
      display: inline-flex;
      align-items: center;
      gap: 12px;
    }
    .topbar__track .dot { color: var(--lime); font-size: 8px; }
    @keyframes slide {
      from { transform: translateX(0); }
      to   { transform: translateX(-50%); }
    }

    /* ============================================================
       NAVIGATION
    ============================================================ */
    .nav {
      position: sticky;
      top: 0;
      z-index: 200;
      background: rgba(244, 241, 234, 0.82);
      backdrop-filter: blur(20px) saturate(150%);
      -webkit-backdrop-filter: blur(20px) saturate(150%);
      border-bottom: 1px solid var(--line);
      transition: all 0.3s var(--ease);
    }
    .nav__inner {
      display: grid;
      grid-template-columns: 1fr auto 1fr;
      align-items: center;
      gap: 32px;
      padding: 18px 0;
    }

    .nav__group {
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .nav__link {
      padding: 9px 16px;
      font-size: 14px;
      font-weight: 500;
      color: var(--t-2);
      border-radius: var(--r-full);
      transition: all 0.22s var(--ease);
      display: inline-flex;
      align-items: center;
      gap: 6px;
    }
    .nav__link:hover { color: var(--t-1); background: var(--paper-2); }
    .nav__link.is-on {
      color: var(--t-1);
      background: var(--lime);
      font-weight: 600;
    }

    .brand {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      font-family: 'Instrument Serif', serif;
      font-size: 34px;
      letter-spacing: -0.02em;
      color: var(--t-1);
      line-height: 1;
    }
    .brand__mark {
      width: 34px;
      height: 34px;
      border-radius: 50%;
      background: var(--ink);
      display: grid;
      place-items: center;
      color: var(--lime);
      font-family: 'Geist', sans-serif;
      font-size: 13px;
      font-weight: 900;
      letter-spacing: -0.04em;
      font-style: normal;
      transform: rotate(-8deg);
    }

    .nav__actions {
      display: flex;
      align-items: center;
      justify-content: flex-end;
      gap: 4px;
    }
    .act {
      width: 42px;
      height: 42px;
      border-radius: 50%;
      display: inline-grid;
      place-items: center;
      font-size: 15px;
      color: var(--t-1);
      position: relative;
      transition: all 0.22s var(--ease);
    }
    .act:hover { background: var(--paper-2); color: var(--clay); }
    .act__dot {
      position: absolute;
      top: 8px; right: 8px;
      width: 8px; height: 8px;
      border-radius: 50%;
      background: var(--clay);
      border: 2px solid var(--paper);
    }
    .act--cta {
      width: auto;
      padding: 0 20px;
      border-radius: var(--r-full);
      background: var(--ink);
      color: var(--t-inv);
      font-size: 13.5px;
      font-weight: 600;
      margin-left: 8px;
      height: 42px;
      display: inline-flex;
      align-items: center;
      gap: 8px;
    }
    .act--cta:hover { background: var(--clay); color: #fff; transform: translateY(-1px); }

    /* ============================================================
       HERO
    ============================================================ */
    .hero {
      padding: 60px 0 100px;
      position: relative;
      overflow: hidden;
    }

    .hero__stage {
      display: grid;
      grid-template-columns: 1.15fr 1fr;
      gap: 72px;
      align-items: center;
    }

    /* Left content */
    .hero__eyebrow {
      display: inline-flex;
      align-items: center;
      gap: 12px;
      padding: 7px 16px 7px 8px;
      background: var(--cream);
      border: 1px solid var(--line);
      border-radius: var(--r-full);
      font-size: 12.5px;
      font-weight: 500;
      color: var(--t-2);
      margin-bottom: 32px;
      box-shadow: var(--sh-1);
    }
    .hero__eyebrow b {
      background: var(--ink);
      color: var(--lime);
      font-size: 10px;
      letter-spacing: 0.1em;
      padding: 4px 10px;
      border-radius: var(--r-full);
      text-transform: uppercase;
      font-weight: 700;
    }

    .hero__title {
      font-family: 'Instrument Serif', serif;
      font-weight: 400;
      font-size: clamp(52px, 7.6vw, 118px);
      line-height: 0.92;
      letter-spacing: -0.035em;
      color: var(--t-1);
      margin-bottom: 32px;
    }
    .hero__title em {
      font-style: italic;
      color: var(--clay);
      position: relative;
      display: inline-block;
    }
    .hero__title em::after {
      content: '';
      position: absolute;
      left: 0; right: 0; bottom: 8px;
      height: 12px;
      background: var(--lime);
      z-index: -1;
      transform: skewX(-6deg);
    }
    .hero__title .underlined {
      position: relative;
      display: inline-block;
    }
    .hero__title .underlined::before {
      content: '';
      position: absolute;
      inset: 6px -4px 4px -4px;
      background: var(--moss-soft);
      border-radius: 4px;
      z-index: -1;
      transform: rotate(-0.6deg);
    }

    .hero__lede {
      font-size: 17px;
      line-height: 1.6;
      color: var(--t-2);
      max-width: 480px;
      margin-bottom: 40px;
      font-weight: 400;
    }

    .hero__actions {
      display: flex;
      align-items: center;
      gap: 16px;
      flex-wrap: wrap;
      margin-bottom: 56px;
    }

    .btn {
      display: inline-flex;
      align-items: center;
      gap: 12px;
      padding: 17px 30px;
      border-radius: var(--r-full);
      font-size: 14.5px;
      font-weight: 600;
      letter-spacing: -0.005em;
      transition: all 0.3s var(--ease);
      cursor: pointer;
      white-space: nowrap;
      position: relative;
      overflow: hidden;
    }
    .btn--dark {
      background: var(--ink);
      color: var(--t-inv);
    }
    .btn--dark::before {
      content: '';
      position: absolute;
      inset: 0;
      background: var(--clay);
      transform: translateY(100%);
      transition: transform 0.4s var(--ease);
      z-index: 0;
    }
    .btn--dark:hover::before { transform: translateY(0); }
    .btn--dark > * { position: relative; z-index: 1; }
    .btn--dark:hover { transform: translateY(-2px); box-shadow: 0 16px 32px -12px rgba(201, 110, 75, 0.6); }
    .btn--dark i { transition: transform 0.3s var(--ease); }
    .btn--dark:hover i { transform: translateX(4px); }

    .btn--outline {
      background: transparent;
      color: var(--ink);
      border: 1.5px solid var(--line);
    }
    .btn--outline:hover {
      border-color: var(--ink);
      background: var(--cream);
      transform: translateY(-2px);
    }

    /* Trust strip */
    .hero__trust {
      display: flex;
      align-items: center;
      gap: 24px;
      padding-top: 32px;
      border-top: 1px solid var(--line);
      flex-wrap: wrap;
    }
    .faces {
      display: flex;
      align-items: center;
    }
    .faces span {
      width: 40px;
      height: 40px;
      border-radius: 50%;
      border: 3px solid var(--paper);
      margin-left: -12px;
      display: grid;
      place-items: center;
      font-size: 12px;
      font-weight: 700;
      color: #fff;
      transition: transform 0.25s var(--ease);
    }
    .faces span:hover { transform: translateY(-3px) scale(1.05); z-index: 2; }
    .faces span:first-child { margin-left: 0; }
    .faces span:nth-child(1) { background: var(--clay); }
    .faces span:nth-child(2) { background: var(--moss); }
    .faces span:nth-child(3) { background: var(--plum); }
    .faces span:nth-child(4) { background: var(--ink); }
    .faces span:nth-child(5) { background: var(--lime-dark); color: var(--ink); }

    .hero__trust-text {
      font-size: 13.5px;
      color: var(--t-2);
      line-height: 1.4;
    }
    .hero__trust-text strong { color: var(--ink); font-weight: 600; }
    .hero__trust-text .stars {
      color: #d99a3a;
      font-size: 12px;
      letter-spacing: 1px;
      display: block;
      margin-bottom: 2px;
    }

    /* Right visual — dramatic product stage */
    .hero__visual {
      position: relative;
      aspect-ratio: 1 / 1.1;
    }

    .stage {
      position: absolute;
      inset: 0;
      border-radius: var(--r-xl);
      overflow: hidden;
      background:
        radial-gradient(circle at 70% 20%, #2a2620 0%, transparent 45%),
        radial-gradient(circle at 25% 85%, #3a2f24 0%, transparent 50%),
        linear-gradient(155deg, #16140f 0%, #0e0e0d 100%);
      box-shadow: var(--sh-3);
    }

    /* Organic shape 1 — terracotta orb */
    .stage__orb-1 {
      position: absolute;
      width: 68%;
      aspect-ratio: 1;
      border-radius: 50%;
      background:
        radial-gradient(circle at 32% 28%, #f0c9a8 0%, #c96e4b 42%, #8b3f24 100%);
      top: 6%;
      left: -12%;
      box-shadow:
        inset -32px -48px 80px rgba(60, 20, 5, 0.5),
        inset 20px 24px 48px rgba(255, 210, 180, 0.28),
        0 40px 80px rgba(0, 0, 0, 0.5);
      filter: blur(0.4px);
    }

    /* Organic shape 2 — moss blob */
    .stage__orb-2 {
      position: absolute;
      width: 54%;
      aspect-ratio: 1;
      border-radius: 48% 52% 42% 58% / 52% 42% 58% 48%;
      background:
        radial-gradient(circle at 30% 30%, #a8b896 0%, #5e7054 50%, #2e3a24 100%);
      bottom: 4%;
      right: -8%;
      box-shadow:
        inset -24px -24px 60px rgba(0, 0, 0, 0.55),
        inset 16px 16px 40px rgba(200, 220, 180, 0.2),
        0 40px 80px rgba(0, 0, 0, 0.5);
      animation: morph 14s ease-in-out infinite;
    }

    /* Organic shape 3 — lime accent */
    .stage__orb-3 {
      position: absolute;
      width: 24%;
      aspect-ratio: 1;
      border-radius: 50%;
      background:
        radial-gradient(circle at 35% 30%, #e8ff8a 0%, #d4f24a 60%, #9ab520 100%);
      top: 58%;
      left: 12%;
      box-shadow:
        inset -12px -16px 32px rgba(60, 80, 0, 0.5),
        inset 8px 8px 20px rgba(255, 255, 200, 0.6),
        0 24px 48px rgba(212, 242, 74, 0.35);
      filter: blur(0.3px);
    }

    @keyframes morph {
      0%, 100% { border-radius: 48% 52% 42% 58% / 52% 42% 58% 48%; }
      50%      { border-radius: 58% 42% 52% 48% / 42% 58% 48% 52%; }
    }

    /* Film grain overlay */
    .stage::after {
      content: '';
      position: absolute;
      inset: 0;
      background-image:
        url("data:image/svg+xml,%3Csvg viewBox='0 0 200 200' xmlns='http://www.w3.org/2000/svg'%3E%3Cfilter id='n'%3E%3CfeTurbulence type='fractalNoise' baseFrequency='0.9' numOctaves='3' stitchTiles='stitch'/%3E%3C/filter%3E%3Crect width='100%25' height='100%25' filter='url(%23n)' opacity='0.5'/%3E%3C/svg%3E");
      opacity: 0.14;
      mix-blend-mode: overlay;
      pointer-events: none;
    }

    /* Floating info pill */
    .stage__pill {
      position: absolute;
      z-index: 3;
      display: flex;
      align-items: center;
      gap: 12px;
      background: rgba(250, 247, 241, 0.98);
      backdrop-filter: blur(12px);
      border-radius: var(--r-md);
      padding: 14px 18px;
      box-shadow: var(--sh-2);
    }
    .stage__pill-icon {
      width: 38px;
      height: 38px;
      border-radius: 10px;
      display: grid;
      place-items: center;
      font-size: 15px;
      flex-shrink: 0;
    }
    .stage__pill strong {
      display: block;
      font-size: 13.5px;
      font-weight: 700;
      color: var(--ink);
      letter-spacing: -0.01em;
      line-height: 1.2;
    }
    .stage__pill small {
      font-size: 11.5px;
      color: var(--t-2);
    }

    .stage__pill--top {
      top: 28px;
      right: 28px;
      animation: bob 5s ease-in-out infinite;
    }
    .stage__pill--top .stage__pill-icon {
      background: var(--lime);
      color: var(--ink);
    }

    .stage__pill--bottom {
      bottom: 32px;
      left: 28px;
      animation: bob 5s ease-in-out infinite;
      animation-delay: 2.5s;
    }
    .stage__pill--bottom .stage__pill-icon {
      background: var(--clay);
      color: #fff;
    }

    @keyframes bob {
      0%, 100% { transform: translateY(0); }
      50%      { transform: translateY(-10px); }
    }

    /* Giant watermark letter */
    .stage__mark {
      position: absolute;
      bottom: -8%;
      left: 50%;
      transform: translateX(-50%);
      font-family: 'Instrument Serif', serif;
      font-style: italic;
      font-size: 320px;
      color: rgba(250, 247, 241, 0.06);
      line-height: 0.8;
      pointer-events: none;
      z-index: 1;
      letter-spacing: -0.04em;
    }

    /* ============================================================
       LOGO MARQUEE
    ============================================================ */
    .logorail {
      background: var(--ink);
      color: var(--t-inv);
      padding: 26px 0;
      overflow: hidden;
      border-block: 1px solid var(--ink-2);
    }
    .logorail__track {
      display: flex;
      gap: 64px;
      align-items: center;
      width: max-content;
      animation: slide 40s linear infinite;
    }
    .logorail__item {
      font-family: 'Instrument Serif', serif;
      font-size: 26px;
      letter-spacing: 0.02em;
      white-space: nowrap;
      color: rgba(244, 241, 234, 0.85);
      display: inline-flex;
      align-items: center;
      gap: 64px;
    }
    .logorail__item::after {
      content: '✦';
      font-family: 'Geist', sans-serif;
      font-size: 12px;
      color: var(--lime);
      font-style: normal;
    }

    /* ============================================================
       COLLECTION
    ============================================================ */
    .collection {
      padding: 104px 0 32px;
    }

    .ch-head {
      display: grid;
      grid-template-columns: 1fr auto;
      align-items: flex-end;
      gap: 40px;
      margin-bottom: 56px;
    }
    .ch-head__label {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      font-size: 11.5px;
      letter-spacing: 0.16em;
      text-transform: uppercase;
      font-weight: 600;
      color: var(--t-3);
      margin-bottom: 20px;
    }
    .ch-head__label::before {
      content: '';
      width: 28px;
      height: 1px;
      background: var(--t-3);
    }
    .ch-head h2 {
      font-family: 'Instrument Serif', serif;
      font-weight: 400;
      font-size: clamp(40px, 5.4vw, 76px);
      line-height: 0.95;
      letter-spacing: -0.03em;
      color: var(--t-1);
    }
    .ch-head h2 em {
      font-style: italic;
      color: var(--clay);
    }

    .ch-head__filters {
      display: flex;
      gap: 6px;
      flex-wrap: wrap;
      align-items: center;
    }
    .f-chip {
      padding: 10px 20px;
      font-size: 13px;
      font-weight: 500;
      color: var(--t-2);
      border: 1.5px solid var(--line);
      border-radius: var(--r-full);
      transition: all 0.24s var(--ease);
    }
    .f-chip:hover { color: var(--ink); border-color: var(--ink); }
    .f-chip.is-on {
      background: var(--ink);
      color: var(--t-inv);
      border-color: var(--ink);
    }
    .f-chip .cnt {
      display: inline-block;
      margin-left: 6px;
      font-size: 10.5px;
      opacity: 0.6;
      font-weight: 600;
    }

    /* Grid */
    .grid {
      display: grid;
      grid-template-columns: repeat(12, 1fr);
      gap: 24px;
    }

    .tile {
      background: var(--cream);
      border-radius: var(--r-lg);
      overflow: hidden;
      display: flex;
      flex-direction: column;
      transition: all 0.42s var(--ease);
      position: relative;
      grid-column: span 3;
      border: 1px solid transparent;
    }
    .tile:hover {
      transform: translateY(-8px);
      box-shadow: var(--sh-2);
      border-color: var(--line);
    }
    .tile--big { grid-column: span 6; }

    /* Media */
    .tile__media {
      position: relative;
      aspect-ratio: 1 / 1;
      overflow: hidden;
      display: flex;
      align-items: center;
      justify-content: center;
      isolation: isolate;
    }
    .tile--big .tile__media { aspect-ratio: 2 / 1.35; }

    .tile__media-bg {
      position: absolute;
      inset: 0;
      transition: transform 0.7s var(--ease);
      z-index: 0;
    }
    .tile:hover .tile__media-bg { transform: scale(1.06); }

    .tile__art {
      position: relative;
      z-index: 2;
      width: 55%;
      max-width: 220px;
      filter: drop-shadow(0 24px 40px rgba(0,0,0,0.22));
      transition: transform 0.6s var(--ease);
    }
    .tile:hover .tile__art { transform: scale(1.06) rotate(-2deg); }

    /* Product art variants — CSS-only objects */
    .art-vase {
      aspect-ratio: 1 / 1.5;
      border-radius: 50% 50% 46% 54% / 62% 62% 38% 38%;
      background:
        radial-gradient(circle at 32% 22%, #f5e6d8 0%, #d4b49a 35%, #9c6c4a 80%, #6b4229 100%);
      box-shadow:
        inset -12px -18px 32px rgba(60, 30, 10, 0.4),
        inset 6px 8px 24px rgba(255, 240, 220, 0.35);
    }
    .art-bowl {
      aspect-ratio: 1.4 / 1;
      border-radius: 50% 50% 42% 42% / 100% 100% 20% 20%;
      background:
        radial-gradient(circle at 30% 20%, #c8d4b8 0%, #7a8a6a 55%, #3e4a32 100%);
      box-shadow:
        inset -10px -14px 28px rgba(0, 0, 0, 0.4),
        inset 8px 8px 20px rgba(220, 235, 200, 0.25);
    }
    .art-cup {
      aspect-ratio: 1 / 1.15;
      border-radius: 18% 18% 42% 42% / 12% 12% 50% 50%;
      background:
        radial-gradient(circle at 30% 25%, #f0d4b8 0%, #c96e4b 50%, #7a3a20 100%);
      box-shadow:
        inset -8px -10px 22px rgba(0, 0, 0, 0.35),
        inset 4px 6px 16px rgba(255, 200, 180, 0.4);
    }
    .art-plate {
      aspect-ratio: 1 / 1;
      border-radius: 50%;
      background:
        radial-gradient(circle, #f4e6d0 0%, #d4b88a 40%, #a87a4a 100%);
      box-shadow:
        inset -8px -10px 24px rgba(60, 40, 20, 0.35),
        inset 4px 4px 16px rgba(255, 240, 220, 0.5);
    }
    .art-lamp {
      aspect-ratio: 1 / 1.6;
      border-radius: 50% 50% 30% 30% / 32% 32% 12% 12%;
      background:
        radial-gradient(circle at 30% 20%, #f0f4d4 0%, #c4d48a 40%, #7a8a4a 100%);
      box-shadow:
        inset -10px -14px 28px rgba(0, 0, 0, 0.35),
        inset 6px 6px 20px rgba(240, 255, 200, 0.35),
        0 0 80px rgba(196, 212, 138, 0.5);
    }
    .art-stone {
      aspect-ratio: 1.2 / 1;
      border-radius: 48% 52% 44% 56% / 56% 44% 56% 44%;
      background:
        radial-gradient(circle at 35% 25%, #d4c2d4 0%, #8a6a8a 45%, #4a2f4a 100%);
      box-shadow:
        inset -12px -14px 28px rgba(0, 0, 0, 0.4),
        inset 6px 8px 20px rgba(230, 210, 230, 0.3);
    }
    .art-textile {
      aspect-ratio: 1 / 1.1;
      border-radius: 12% 12% 8% 8%;
      background:
        repeating-linear-gradient(45deg, #c96e4b 0 6px, #b05e3e 6px 12px, #e8c4b0 12px 15px);
      box-shadow:
        inset -8px -10px 22px rgba(60, 20, 10, 0.3),
        inset 4px 6px 14px rgba(255, 220, 200, 0.3);
    }

    /* Media backgrounds — soft colorways */
    .bg-1 { background: linear-gradient(155deg, #f4e6d0 0%, #e0c8a8 100%); }
    .bg-2 { background: linear-gradient(155deg, #e6ead8 0%, #c8d4b8 100%); }
    .bg-3 { background: linear-gradient(155deg, #f4dcd0 0%, #e0b8a0 100%); }
    .bg-4 { background: linear-gradient(155deg, #e8e0d0 0%, #d0c0a8 100%); }
    .bg-5 { background: linear-gradient(155deg, #ece8d4 0%, #d4d0b0 100%); }
    .bg-6 { background: linear-gradient(155deg, #e8dce0 0%, #d4c0c8 100%); }
    .bg-7 { background: linear-gradient(155deg, #e0d8d0 0%, #c8b8a8 100%); }

    /* Tile badges */
    .badge {
      position: absolute;
      top: 16px;
      left: 16px;
      z-index: 4;
      background: rgba(250, 247, 241, 0.97);
      backdrop-filter: blur(8px);
      color: var(--ink);
      font-size: 10.5px;
      font-weight: 700;
      letter-spacing: 0.1em;
      text-transform: uppercase;
      padding: 7px 13px;
      border-radius: var(--r-full);
    }
    .badge--new  { background: var(--ink); color: var(--lime); }
    .badge--sale { background: var(--clay); color: #fff; }

    /* Wishlist button */
    .wish {
      position: absolute;
      top: 16px;
      right: 16px;
      z-index: 4;
      width: 38px;
      height: 38px;
      border-radius: 50%;
      background: rgba(250, 247, 241, 0.97);
      backdrop-filter: blur(8px);
      display: grid;
      place-items: center;
      font-size: 13px;
      color: var(--ink);
      opacity: 0;
      transform: translateY(-6px) scale(0.95);
      transition: all 0.3s var(--ease);
    }
    .tile:hover .wish { opacity: 1; transform: translateY(0) scale(1); }
    .wish:hover { color: var(--clay); background: #fff; }

    /* Body */
    .tile__body {
      padding: 20px 22px 22px;
      display: flex;
      flex-direction: column;
      gap: 10px;
      flex-grow: 1;
      background: var(--cream);
    }
    .tile--big .tile__body {
      display: grid;
      grid-template-columns: 1fr auto;
      align-items: end;
      gap: 24px;
      padding: 24px 28px 26px;
    }
    .tile__info { display: flex; flex-direction: column; gap: 6px; min-width: 0; }

    .tile
