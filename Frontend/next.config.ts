import type { NextConfig } from "next";

const nextConfig = {
  typescript: {
    // ATENÇÃO: Isso permite o build mesmo com erros de TypeScript.
    ignoreBuildErrors: true,
  },
};

export default nextConfig;
