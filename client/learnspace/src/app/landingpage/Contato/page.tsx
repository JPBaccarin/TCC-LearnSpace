'use client'
import React from "react";
import NavbarLandingPage from "@/components/index/hero/navbar";
import Hero from "@/components/index/Contato/hero";
import FAQSection from "@/components/index/Contato/faq";

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