'use client'
import React from "react";
import Hero from "@/components/Sobre/hero";
import FAQSection from "@/components/Sobre/faq";
import NavbarLandingPage from "@/components/index/navbarlandingpage/navbarlandingpage";

const page: React.FC = () => {
  return (
    <div className="bg-gray-900 ">
      <NavbarLandingPage />
      <Hero />
      <FAQSection />

    </div>
  );
};


export default page;