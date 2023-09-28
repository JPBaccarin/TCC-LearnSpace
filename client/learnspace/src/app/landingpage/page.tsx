'use client'
import FAQSection from "@/components/index/faq";
import Hero from "@/components/index/hero";
import NavbarLandingPage from "@/components/index/navbarlandingpage/navbarlandingpage";
import React from "react";
import Funcionalidades from "@/components/index/funcionalidades/funcionalidades";

const page: React.FC = () => {
  return (
    <div className="bg-gray-900 ">
      <NavbarLandingPage />
      <Hero />
      <Funcionalidades/>
      <FAQSection />
    </div>
  );
};

export default page;
