<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:atom="http://www.w3.org/2005/Atom">
<xsl:output method="html" encoding="UTF-8" indent="yes" doctype-system="about:legacy-compat"/>
<xsl:template match="/rss/channel">
<html lang="en"><head><meta charset="utf-8"/><meta name="viewport" content="width=device-width,initial-scale=1"/>
<title><xsl:value-of select="title"/> (RSS feed)</title>
<style>
body{margin:0;background:#fff;color:#0f172a;font-family:Manrope,system-ui,-apple-system,Segoe UI,Roboto,sans-serif;line-height:1.55}
.w{max-width:760px;margin:0 auto;padding:32px 16px 64px}
.note{background:#eaf1ff;border:1px solid #c7d8f7;border-radius:12px;padding:14px 16px;font-size:14px;color:#1e3a8a}
h1{font-size:28px;line-height:1.2;margin:24px 0 6px}
.d{color:#475569;margin:0 0 24px}
.i{border:1px solid #e2e8f0;border-radius:14px;padding:16px 18px;margin:0 0 14px}
.i a{color:#0b5ed7;font-weight:700;font-size:18px;text-decoration:none}
.i a:hover{text-decoration:underline}
.i time{display:block;font-size:13px;color:#64748b;margin:2px 0 6px}
.i p{margin:0;font-size:15px}
.b{display:inline-block;margin-top:8px;color:#0b5ed7;font-weight:700}
</style></head><body><div class="w">
<div class="note">This is an RSS feed. Copy this page's address into a feed reader to follow new posts.</div>
<h1><xsl:value-of select="title"/></h1>
<p class="d"><xsl:value-of select="description"/></p>
<p><a class="b" href="{link}">Visit the blog &#8594;</a></p>
<xsl:for-each select="item">
<div class="i"><a href="{link}"><xsl:value-of select="title"/></a><time><xsl:value-of select="substring(pubDate,6,11)"/></time><p><xsl:value-of select="description"/></p></div>
</xsl:for-each>
</div></body></html>
</xsl:template>
</xsl:stylesheet>
