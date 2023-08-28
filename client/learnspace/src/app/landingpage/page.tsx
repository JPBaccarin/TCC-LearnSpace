'use client'
import Hero from "@/components/index/hero";
import NavbarLandingPage from "@/components/index/navbar";
import React from "react";


const page: React.FC = () => {
  return (
    <div className="bg-gray-900 ">
      <NavbarLandingPage />
      <Hero/>
    </div>
  );
};

export default page;
