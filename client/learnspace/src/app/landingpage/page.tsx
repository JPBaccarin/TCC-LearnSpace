'use client'
import FAQSection from "@/components/index/faq";
import Hero from "@/components/index/hero";
import Hero3 from "@/components/index/hero3";
import NavbarLandingPage from "@/components/index/navbar";
import React from "react";


const page: React.FC = () => {
  return (
    <div className="bg-gray-900 ">
      <NavbarLandingPage />
      <Hero />
      <Hero3/>
      <FAQSection />
    </div>
  );
};

export default page;
