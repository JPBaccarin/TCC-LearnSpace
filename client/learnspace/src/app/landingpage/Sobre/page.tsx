'use client'
import React from "react";
import NavbarLandingPage from "@/components/index/hero/navbar";
import Hero from "@/components/Sobre/hero";
import FAQSection from "@/components/Sobre/faq";

const page: React.FC = () => {
    return (
      <div className="bg-gray-900 ">
           <NavbarLandingPage />
           <Hero />
           <FAQSection/>
           
      </div>
    );
  };


  export default page;