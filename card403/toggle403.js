/**
 * @file toggle403.js
 * @description 仿Chrome原生403错误页遮罩
 */

/**
 * 切换403遮罩
 * @function
 */
(function toggle403Mask() {
  const MASK_ID = '__chrome_403_mask__';
  let mask = document.getElementById(MASK_ID);
  if (mask) {
    mask.remove();
    return;
  }
  mask = document.createElement('div');
  mask.id = MASK_ID;
  mask.style.cssText = `
    position: fixed;
    z-index: 2147483647;
    top: 0; left: 0; width: 100vw; height: 100vh;
    background: #fff;
    color: #5f6368;
    font-family: 'Roboto', 'Segoe UI', Arial, sans-serif;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
  `;

  mask.innerHTML = `
    <div style="text-align:center;max-width:600px;">
      <svg xmlns="http://www.w3.org/2000/svg" width="72" height="72" style="margin-bottom:24px;" viewBox="0 0 72 72" aria-hidden="true">
        <g>
          <rect x="16" y="28" width="40" height="28" rx="4" fill="#e8eaed"/>
          <rect x="24" y="36" width="24" height="12" rx="2" fill="#bdbdbd"/>
          <rect x="32" y="20" width="8" height="12" rx="2" fill="#bdbdbd"/>
          <rect x="34" y="16" width="4" height="4" rx="2" fill="#bdbdbd"/>
        </g>
      </svg>
      <div style="font-size:2.5rem; color:#5f6368; font-weight:400; margin-bottom:8px;">403</div>
      <div style="font-size:1.25rem; color:#5f6368; margin-bottom:16px;">这是个错误。</div>
      <div style="color:#5f6368; font-size:1rem; margin-bottom:32px;">
        您的客户端没有权限访问此页面。
      </div>
      <div style="color:#a0a0a0; font-size:0.9rem;">
        <span>HTTP ERROR 403</span>
      </div>
    </div>
  `;
  document.body.appendChild(mask);
})();