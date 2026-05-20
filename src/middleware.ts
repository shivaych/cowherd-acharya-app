import { NextRequest, NextResponse } from "next/server";

const ADMIN_COOKIE = "cowherd-admin-session";

export function middleware(req: NextRequest) {
  const { pathname } = req.nextUrl;

  // Let /admin itself render — it shows the login form client-side
  if (pathname === "/admin") return NextResponse.next();

  if (pathname.startsWith("/admin/")) {
    const cookie = req.cookies.get(ADMIN_COOKIE);
    if (!cookie?.value) {
      const loginUrl = req.nextUrl.clone();
      loginUrl.pathname = "/admin";
      loginUrl.search = "";
      return NextResponse.redirect(loginUrl);
    }
  }

  return NextResponse.next();
}

export const config = {
  matcher: ["/admin/:path+"],
};
