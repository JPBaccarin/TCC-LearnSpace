'use client'
import React from "react";
import Hero from "@/components/index/Contato/hero";
import FAQSection from "@/components/index/Contato/faq";
import NavbarLandingPage from "@/components/index/navbarlandingpage/navbarlandingpage";

const page: React.FC = () => {
    return (
      <div className="bg-gray-900 ">
          <NavbarLandingPage/>
           <Hero />
           <FAQSection/>
      </div>
    );
  };


  export default page;